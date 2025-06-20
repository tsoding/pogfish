const std = @import("std");

pub fn build(b: *std.Build) void {
    const exe = b.addExecutable(.{
        .name = "pogfish",
        .root_source_file = b.path("pogfish.png"),
        .target = b.graph.host,
    });

    b.installArtifact(exe);
}
