.class public Lorg/android/spdy/SpdyStreamContext;
.super Ljava/lang/Object;
.source "SpdyStreamContext.java"


# instance fields
.field public callBack:Lorg/android/spdy/Spdycb;

.field public streamContext:Ljava/lang/Object;

.field public streamId:I


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lorg/android/spdy/SpdyStreamContext;->streamContext:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lorg/android/spdy/SpdyStreamContext;->streamId:I

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lorg/android/spdy/Spdycb;)V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/android/spdy/SpdyStreamContext;->streamContext:Ljava/lang/Object;

    .line 17
    iput-object p2, p0, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    return-void
.end method

.method static getContext(Ljava/lang/Object;)I
    .registers 2

    if-eqz p0, :cond_d

    .line 22
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_d

    .line 24
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method
