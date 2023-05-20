.class public Lorg/android/spdy/SpdyDataProvider;
.super Ljava/lang/Object;
.source "SpdyDataProvider.java"


# instance fields
.field data:[B

.field public finished:Z

.field postBody:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lorg/android/spdy/SpdyDataProvider;->finished:Z

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lorg/android/spdy/SpdyDataProvider;->data:[B

    .line 30
    iput-object p1, p0, Lorg/android/spdy/SpdyDataProvider;->postBody:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lorg/android/spdy/SpdyDataProvider;->finished:Z

    .line 22
    iput-object p1, p0, Lorg/android/spdy/SpdyDataProvider;->data:[B

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lorg/android/spdy/SpdyDataProvider;->postBody:Ljava/util/Map;

    return-void
.end method
