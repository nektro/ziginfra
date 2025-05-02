const std = @import("std");

const O = struct {
    std.Build.ResolvedTarget,
    std.builtin.OptimizeMode,
    bool, // disable_llvm
};

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const mode = b.option(std.builtin.Mode, "mode", "") orelse .Debug;
    const disable_llvm = b.option(bool, "disable_llvm", "use the non-llvm zig codegen") orelse false;

    b.reference_trace = 128;

    const opts: O = .{
        target,
        mode,
        disable_llvm,
    };

    const test_step = b.step("test", "Run unit tests");
    test_step.dependOn(dependOn(b, "arqv-ini", opts));
    test_step.dependOn(dependOn(b, "gimme", opts));
    test_step.dependOn(dependOn(b, "zig-ansi", opts));
    test_step.dependOn(dependOn(b, "zig-bencode", opts));
    test_step.dependOn(dependOn(b, "zig-color", opts));
    // test_step.dependOn(dependOn(b, "zig-cookies", opts)); //
    test_step.dependOn(dependOn(b, "zig-detect-license", opts));
    test_step.dependOn(dependOn(b, "zig-errno", opts));
    test_step.dependOn(dependOn(b, "zig-expect", opts));
    test_step.dependOn(dependOn(b, "zig-extras", opts));
    test_step.dependOn(dependOn(b, "zig-flag", opts));
    test_step.dependOn(dependOn(b, "zig-fmt-valueliteral", opts));
    test_step.dependOn(dependOn(b, "zig-git", opts));
    test_step.dependOn(dependOn(b, "zig-iana-tlds", opts));
    test_step.dependOn(dependOn(b, "zig-icu", opts));
    test_step.dependOn(dependOn(b, "zig-inquirer", opts));
    test_step.dependOn(dependOn(b, "zig-intrusive-parser", opts));
    test_step.dependOn(dependOn(b, "zig-iso-3166-countrys", opts));
    test_step.dependOn(dependOn(b, "zig-iso-639-languages", opts));
    test_step.dependOn(dependOn(b, "zig-js", opts));
    test_step.dependOn(dependOn(b, "zig-json", opts));
    test_step.dependOn(dependOn(b, "zig-leven", opts));
    test_step.dependOn(dependOn(b, "zig-libc", opts));
    test_step.dependOn(dependOn(b, "zig-licenses", opts));
    test_step.dependOn(dependOn(b, "zig-licenses-text", opts));
    test_step.dependOn(dependOn(b, "zig-mime", opts));
    test_step.dependOn(dependOn(b, "zig-oauth2", opts));
    test_step.dependOn(dependOn(b, "zig-pek", opts));
    test_step.dependOn(dependOn(b, "zig-signal", opts));
    test_step.dependOn(dependOn(b, "zig-sys-linux", opts));
    test_step.dependOn(dependOn(b, "zig-time", opts));
    test_step.dependOn(dependOn(b, "zig-tracer", opts));
    test_step.dependOn(dependOn(b, "zig-ulid", opts));
    test_step.dependOn(dependOn(b, "zig-unicode-uca", opts));
    test_step.dependOn(dependOn(b, "zig-unicode-ucd", opts));
    test_step.dependOn(dependOn(b, "zig-UrlValues", opts));
    // test_step.dependOn(dependOn(b, "zig-webidl", opts)); // not passing 100%
    test_step.dependOn(dependOn(b, "zig-xml", opts));
    test_step.dependOn(dependOn(b, "zig-yaml", opts));
    test_step.dependOn(dependOn(b, "zig-zorm", opts));
    test_step.dependOn(dependOn(b, "koino-fork", opts));
}

fn dependOn(b: *std.Build, name: []const u8, opts: O) *std.Build.Step {
    const dependency = b.dependency(name, .{
        .target = opts[0],
        .mode = opts[1],
        .disable_llvm = opts[2],
    });
    const step = &dependency.builder.top_level_steps.get("test").?.step;
    step.name = name;
    return step;
}
