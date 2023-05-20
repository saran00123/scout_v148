.class Lcom/taobao/accs/net/w;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lorg/android/spdy/AccsSSLCallback;


# instance fields
.field final synthetic a:Lcom/taobao/accs/net/s;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/s;)V
    .registers 2

    .line 610
    iput-object p1, p0, Lcom/taobao/accs/net/w;->a:Lcom/taobao/accs/net/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSSLPublicKey(I[B)[B
    .registers 3

    .line 613
    invoke-static {}, Lcom/taobao/accs/utl/UtilityImpl;->a()[B

    move-result-object p1

    return-object p1
.end method
