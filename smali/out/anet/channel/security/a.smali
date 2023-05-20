.class Lanet/channel/security/a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/security/ISecurity;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lanet/channel/security/a;->a:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lanet/channel/security/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public decrypt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)[B
    .registers 5

    const/4 p1, 0x0

    return-object p1
.end method

.method public getBytes(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public isSecOff()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public saveBytes(Landroid/content/Context;Ljava/lang/String;[B)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public sign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 23
    iget-object p1, p0, Lanet/channel/security/a;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_a

    return-object p3

    :cond_a
    const-string p1, "HMAC_SHA1"

    .line 27
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 28
    iget-object p1, p0, Lanet/channel/security/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p1, p2}, Lanet/channel/util/HMacUtil;->hmacSha1Hex([B[B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_21
    return-object p3
.end method
