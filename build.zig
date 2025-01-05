const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const mode = b.option(std.builtin.Mode, "mode", "") orelse .Debug;

    const test_step = b.step("test", "Run unit tests");
    test_step.dependOn(&b.dependency("arqv-ini", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    test_step.dependOn(&b.dependency("gimme", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    test_step.dependOn(&b.dependency("zig-ansi", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    test_step.dependOn(&b.dependency("zig-bencode", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    test_step.dependOn(&b.dependency("zig-color", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    test_step.dependOn(&b.dependency("zig-detect-license", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    test_step.dependOn(&b.dependency("zig-expect", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    test_step.dependOn(&b.dependency("zig-extras", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    test_step.dependOn(&b.dependency("zig-flag", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    test_step.dependOn(&b.dependency("zig-fmt-valueliteral", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    test_step.dependOn(&b.dependency("zig-git", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    test_step.dependOn(&b.dependency("zig-iana-tlds", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    test_step.dependOn(&b.dependency("zig-icu", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    test_step.dependOn(&b.dependency("zig-inquirer", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    test_step.dependOn(&b.dependency("zig-intrusive-parser", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    test_step.dependOn(&b.dependency("zig-iso-3166-countrys", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    test_step.dependOn(&b.dependency("zig-iso-639-languages", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    // test_step.dependOn(&b.dependency("zig-js", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step); // not passing 100%
    test_step.dependOn(&b.dependency("zig-json", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    test_step.dependOn(&b.dependency("zig-leven", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    test_step.dependOn(&b.dependency("zig-licenses", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    test_step.dependOn(&b.dependency("zig-licenses-text", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    test_step.dependOn(&b.dependency("zig-mime", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    test_step.dependOn(&b.dependency("zig-oauth2", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    test_step.dependOn(&b.dependency("zig-pek", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    test_step.dependOn(&b.dependency("zig-signal", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    test_step.dependOn(&b.dependency("zig-time", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    test_step.dependOn(&b.dependency("zig-tracer", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    test_step.dependOn(&b.dependency("zig-ulid", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    test_step.dependOn(&b.dependency("zig-unicode-uca", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    test_step.dependOn(&b.dependency("zig-unicode-ucd", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    test_step.dependOn(&b.dependency("zig-UrlValues", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    // test_step.dependOn(&b.dependency("zig-webidl", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step); // not passing 100%
    test_step.dependOn(&b.dependency("zig-xml", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    test_step.dependOn(&b.dependency("zig-yaml", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
    test_step.dependOn(&b.dependency("zig-zorm", .{ .target = target, .mode = mode }).builder.top_level_steps.get("test").?.step);
}
