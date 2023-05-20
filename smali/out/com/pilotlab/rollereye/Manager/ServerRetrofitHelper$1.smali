.class Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper$1;
.super Ljava/lang/Object;
.source "ServerRetrofitHelper.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;->initServerOkhttpClient()Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper$1;->this$0:Lcom/pilotlab/rollereye/Manager/ServerRetrofitHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method
