.class public Lcom/pilotlab/rollereye/Common/ServerConstent;
.super Ljava/lang/Object;
.source "ServerConstent.java"


# static fields
.field public static CODE_PARAM:I = 0x190

.field public static CODE_SERVER:I = 0x1f4

.field public static CODE_SUCCESS:I = 0xc8

.field public static CODE_TOKEN:I = 0x191

.field public static CODE_UNVERIFICATION:I = 0xdc

.field public static P2PkeyLicense:Ljava/lang/String; = "AQAAAIj25yJIR2pCUoQ6Ffw7hCurbgx37w0d2CMsV5nQfUZUyNilu/qGup6uVjLNkbv67/jJevhfvXclsH+c/xzfmHgri5U2qziJh81Kp5untsyC5AZfEyrg7QMLUa4XmCGnbfo3uYVWh3paa3ToUCnAN39JetXN31vhFx8e8QnJ5s4TainzSV5ahri5pYu76z5SeybOcGRnTxkQcb2EMpDshBYb"

.field public static SERVER_FORGET:I = 0x2

.field public static SERVER_REGISTER:I = 0x1

.field public static baseURL:Ljava/lang/String; = "https://scoutserver.moorebot.com"

.field private static ivParameter:Ljava/lang/String; = "1122334455667788"

.field public static questionNaireURL_amazon:Ljava/lang/String; = "https://www.moorebot.com/scout/amazon"

.field public static questionNaireURL_amazonca:Ljava/lang/String; = "https://www.moorebot.com/scout/amazonca"

.field public static questionNaireURL_bestbuy:Ljava/lang/String; = "https://www.moorebot.com/scout/bestbuy"

.field public static questionNaireURL_walmart:Ljava/lang/String; = "https://www.moorebot.com/scout/walmart"

.field public static quickStartURL:Ljava/lang/String; = "https://www.moorebot.com/scout/Scout_User_Manual.pdf"

.field private static sKey:Ljava/lang/String; = "oieoolmbaotrlbpt"

.field public static socketIP:Ljava/lang/String; = "10.42.0.1"

.field public static socketPort:I = 0xea60

.field public static socketTimeOut:I = 0x3

.field public static stripePublicKey:Ljava/lang/String; = "pk_live_51HJunEAWYDaOx0WowCLE0d1zUj1Zz3fyFR7n2meqrA4W0O5B03GYn7qhX7C6Eo6TNn6LTeekAffoFagh3LEsIrnf00aP9Zrv1z"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "TLS"

    .line 75
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x1

    .line 76
    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/pilotlab/rollereye/Utils/TrustAllCerts;

    invoke-direct {v4}, Lcom/pilotlab/rollereye/Utils/TrustAllCerts;-><init>()V

    aput-object v4, v2, v3

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 78
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_1e

    :catch_1e
    return-object v0
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    :try_start_0
    sget-object v0, Lcom/pilotlab/rollereye/Common/ServerConstent;->sKey:Ljava/lang/String;

    const-string v1, "ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 102
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v0, "AES/CBC/PKCS5Padding"

    .line 103
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 104
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v3, Lcom/pilotlab/rollereye/Common/ServerConstent;->ivParameter:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x2

    .line 105
    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 v1, 0x0

    .line 106
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 107
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 108
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    return-object v0

    :catch_35
    const/4 p0, 0x0

    return-object p0
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AES/CBC/PKCS5Padding"

    .line 87
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 88
    sget-object v1, Lcom/pilotlab/rollereye/Common/ServerConstent;->sKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 89
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 90
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v3, Lcom/pilotlab/rollereye/Common/ServerConstent;->ivParameter:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x1

    .line 92
    invoke-virtual {v0, v3, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const-string v1, "utf-8"

    .line 93
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const/4 v0, 0x0

    .line 95
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
