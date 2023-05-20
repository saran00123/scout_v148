.class Lanet/channel/d;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/strategy/dispatch/IAmdcSign;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lanet/channel/security/ISecurity;

.field final synthetic c:Lanet/channel/SessionCenter;


# direct methods
.method constructor <init>(Lanet/channel/SessionCenter;Ljava/lang/String;Lanet/channel/security/ISecurity;)V
    .registers 4

    .line 142
    iput-object p1, p0, Lanet/channel/d;->c:Lanet/channel/SessionCenter;

    iput-object p2, p0, Lanet/channel/d;->a:Ljava/lang/String;

    iput-object p3, p0, Lanet/channel/d;->b:Lanet/channel/security/ISecurity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppkey()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Lanet/channel/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public sign(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 150
    iget-object v0, p0, Lanet/channel/d;->b:Lanet/channel/security/ISecurity;

    iget-object v1, p0, Lanet/channel/d;->c:Lanet/channel/SessionCenter;

    iget-object v1, v1, Lanet/channel/SessionCenter;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lanet/channel/d;->getAppkey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HMAC_SHA1"

    invoke-interface {v0, v1, v3, v2, p1}, Lanet/channel/security/ISecurity;->sign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public useSecurityGuard()Z
    .registers 2

    .line 155
    iget-object v0, p0, Lanet/channel/d;->b:Lanet/channel/security/ISecurity;

    invoke-interface {v0}, Lanet/channel/security/ISecurity;->isSecOff()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
