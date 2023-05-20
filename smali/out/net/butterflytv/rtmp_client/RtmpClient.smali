.class public Lnet/butterflytv/rtmp_client/RtmpClient;
.super Ljava/lang/Object;
.source "RtmpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/butterflytv/rtmp_client/RtmpClient$RtmpIOException;
    }
.end annotation


# static fields
.field public static final OPEN_SUCCESS:I = 0x1


# instance fields
.field private rtmpPointer:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "rtmp-jni"

    .line 11
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lnet/butterflytv/rtmp_client/RtmpClient;->rtmpPointer:J

    return-void
.end method

.method private native nativeAlloc()J
.end method

.method private native nativeClose(J)V
.end method

.method private native nativeIsConnected(J)Z
.end method

.method private native nativeOpen(Ljava/lang/String;ZJ)I
.end method

.method private native nativePause(ZJ)Z
.end method

.method private native nativeRead([BIIJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native nativeWrite([BJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 146
    iget-wide v0, p0, Lnet/butterflytv/rtmp_client/RtmpClient;->rtmpPointer:J

    invoke-direct {p0, v0, v1}, Lnet/butterflytv/rtmp_client/RtmpClient;->nativeClose(J)V

    return-void
.end method

.method public isConnected()Z
    .registers 3

    .line 136
    iget-wide v0, p0, Lnet/butterflytv/rtmp_client/RtmpClient;->rtmpPointer:J

    invoke-direct {p0, v0, v1}, Lnet/butterflytv/rtmp_client/RtmpClient;->nativeIsConnected(J)Z

    move-result v0

    return v0
.end method

.method public open(Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/butterflytv/rtmp_client/RtmpClient$RtmpIOException;
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lnet/butterflytv/rtmp_client/RtmpClient;->nativeAlloc()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/butterflytv/rtmp_client/RtmpClient;->rtmpPointer:J

    .line 53
    iget-wide v0, p0, Lnet/butterflytv/rtmp_client/RtmpClient;->rtmpPointer:J

    invoke-direct {p0, p1, p2, v0, v1}, Lnet/butterflytv/rtmp_client/RtmpClient;->nativeOpen(Ljava/lang/String;ZJ)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_10

    return-void

    :cond_10
    const-wide/16 v0, 0x0

    .line 55
    iput-wide v0, p0, Lnet/butterflytv/rtmp_client/RtmpClient;->rtmpPointer:J

    .line 56
    new-instance p2, Lnet/butterflytv/rtmp_client/RtmpClient$RtmpIOException;

    invoke-direct {p2, p1}, Lnet/butterflytv/rtmp_client/RtmpClient$RtmpIOException;-><init>(I)V

    throw p2
.end method

.method public pause(Z)Z
    .registers 4

    .line 124
    iget-wide v0, p0, Lnet/butterflytv/rtmp_client/RtmpClient;->rtmpPointer:J

    invoke-direct {p0, p1, v0, v1}, Lnet/butterflytv/rtmp_client/RtmpClient;->nativePause(ZJ)Z

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-wide v4, p0, Lnet/butterflytv/rtmp_client/RtmpClient;->rtmpPointer:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lnet/butterflytv/rtmp_client/RtmpClient;->nativeRead([BIIJ)I

    move-result p1

    return p1
.end method

.method public write([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-wide v0, p0, Lnet/butterflytv/rtmp_client/RtmpClient;->rtmpPointer:J

    invoke-direct {p0, p1, v0, v1}, Lnet/butterflytv/rtmp_client/RtmpClient;->nativeWrite([BJ)I

    move-result p1

    return p1
.end method
