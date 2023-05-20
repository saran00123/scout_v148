.class Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource$1;
.super Ljava/lang/Object;
.source "GSYExoHttpDataSource.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->makeConnection(Ljava/net/URL;I[BJJZZ)Ljava/net/HttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;)V
    .registers 2

    .line 312
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource$1;->this$0:Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method
