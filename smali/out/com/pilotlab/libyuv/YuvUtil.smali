.class public Lcom/pilotlab/libyuv/YuvUtil;
.super Ljava/lang/Object;
.source "YuvUtil.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "yuvtool"

    .line 17
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native CropYuvI420([BII[BIIII)V
.end method

.method public static native CropYuvI420ToARGB([BII[BIIII)V
.end method

.method public static native GetLibYuvVersion()I
.end method

.method public static native YuvI420toARGB([B[B[B[BII)V
.end method
