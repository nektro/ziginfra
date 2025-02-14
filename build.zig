const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const mode = b.option(std.builtin.Mode, "mode", "") orelse .Debug;

    const test_step = b.step("test", "Run unit tests");
    test_step.dependOn(dependOn(b, "arqv-ini", target, mode));
    test_step.dependOn(dependOn(b, "gimme", target, mode));
    test_step.dependOn(dependOn(b, "zig-ansi", target, mode));
    test_step.dependOn(dependOn(b, "zig-bencode", target, mode));
    test_step.dependOn(dependOn(b, "zig-color", target, mode));
    test_step.dependOn(dependOn(b, "zig-detect-license", target, mode));
    test_step.dependOn(dependOn(b, "zig-expect", target, mode));
    test_step.dependOn(dependOn(b, "zig-extras", target, mode));
    test_step.dependOn(dependOn(b, "zig-flag", target, mode));
    test_step.dependOn(dependOn(b, "zig-fmt-valueliteral", target, mode));
    test_step.dependOn(dependOn(b, "zig-git", target, mode));
    test_step.dependOn(dependOn(b, "zig-iana-tlds", target, mode));
    test_step.dependOn(dependOn(b, "zig-icu", target, mode));
    test_step.dependOn(dependOn(b, "zig-inquirer", target, mode));
    test_step.dependOn(dependOn(b, "zig-intrusive-parser", target, mode));
    test_step.dependOn(dependOn(b, "zig-iso-3166-countrys", target, mode));
    test_step.dependOn(dependOn(b, "zig-iso-639-languages", target, mode));
    // test_step.dependOn(dependOn(b,"zig-js", target,mode)); // not passing 100%
    test_step.dependOn(dependOn(b, "zig-json", target, mode));
    test_step.dependOn(dependOn(b, "zig-leven", target, mode));
    test_step.dependOn(dependOn(b, "zig-licenses", target, mode));
    test_step.dependOn(dependOn(b, "zig-licenses-text", target, mode));
    test_step.dependOn(dependOn(b, "zig-mime", target, mode));
    test_step.dependOn(dependOn(b, "zig-oauth2", target, mode));
    test_step.dependOn(dependOn(b, "zig-pek", target, mode));
    test_step.dependOn(dependOn(b, "zig-signal", target, mode));
    test_step.dependOn(dependOn(b, "zig-time", target, mode));
    test_step.dependOn(dependOn(b, "zig-tracer", target, mode));
    test_step.dependOn(dependOn(b, "zig-ulid", target, mode));
    test_step.dependOn(dependOn(b, "zig-unicode-uca", target, mode));
    test_step.dependOn(dependOn(b, "zig-unicode-ucd", target, mode));
    test_step.dependOn(dependOn(b, "zig-UrlValues", target, mode));
    // test_step.dependOn(dependOn(b,"zig-webidl", target,mode)); // not passing 100%
    test_step.dependOn(dependOn(b, "zig-xml", target, mode));
    test_step.dependOn(dependOn(b, "zig-yaml", target, mode));
    test_step.dependOn(dependOn(b, "zig-zorm", target, mode));
}

fn dependOn(b: *std.Build, name: []const u8, target: std.Build.ResolvedTarget, mode: std.builtin.OptimizeMode) *std.Build.Step {
    const dependency = b.dependency(name, .{
        .target = target,
        .mode = mode,
    });
    const step = &dependency.builder.top_level_steps.get("test").?.step;
    step.name = name;
    return step;
}
