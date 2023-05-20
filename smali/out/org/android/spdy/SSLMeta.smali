.class public Lorg/android/spdy/SSLMeta;
.super Ljava/lang/Object;
.source "SSLMeta.java"


# instance fields
.field public sslMeta:[B

.field public sslMetaLength:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/android/spdy/SSLMeta;->sslMeta:[B

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lorg/android/spdy/SSLMeta;->sslMetaLength:I

    return-void
.end method
