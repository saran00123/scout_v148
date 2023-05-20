.class Lanet/channel/security/b;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/security/ISecurity;


# static fields
.field private static a:Ljava/lang/String; = "awcn.DefaultSecurityGuard"

.field private static b:Z = false

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    :try_start_0
    const-string v0, "com.alibaba.wireless.security.open.SecurityGuardManager"

    .line 27
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    .line 28
    sput-boolean v0, Lanet/channel/security/b;->b:Z

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lanet/channel/security/b;->c:Ljava/util/Map;

    .line 30
    sget-object v0, Lanet/channel/security/b;->c:Ljava/util/Map;

    const-string v1, "HMAC_SHA1"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lanet/channel/security/b;->c:Ljava/util/Map;

    const-string v1, "ASE128"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_28} :catch_29

    goto :goto_2c

    :catch_29
    const/4 v0, 0x0

    .line 33
    sput-boolean v0, Lanet/channel/security/b;->b:Z

    :goto_2c
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lanet/channel/security/b;->d:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lanet/channel/security/b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public decrypt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)[B
    .registers 7

    .line 71
    sget-boolean v0, Lanet/channel/security/b;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    if-eqz p1, :cond_46

    if-eqz p4, :cond_46

    .line 74
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    sget-object v0, Lanet/channel/security/b;->c:Ljava/util/Map;

    .line 75
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_46

    .line 78
    :cond_18
    sget-object v0, Lanet/channel/security/b;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_23

    return-object v1

    .line 83
    :cond_23
    :try_start_23
    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object p1

    if-eqz p1, :cond_46

    .line 85
    invoke-virtual {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object p1

    if-eqz p1, :cond_46

    .line 87
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lanet/channel/security/b;->d:Ljava/lang/String;

    invoke-interface {p1, p2, p3, p4, v0}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeDecryptNoB64(ILjava/lang/String;[BLjava/lang/String;)[B

    move-result-object p1
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_39} :catch_3a

    return-object p1

    :catch_3a
    move-exception p1

    .line 91
    sget-object p2, Lanet/channel/security/b;->a:Ljava/lang/String;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string/jumbo p4, "staticBinarySafeDecryptNoB64"

    invoke-static {p2, p4, v1, p1, p3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_46
    :goto_46
    return-object v1
.end method

.method public getBytes(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_27

    .line 121
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_27

    .line 125
    :cond_a
    :try_start_a
    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 127
    invoke-virtual {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 129
    invoke-interface {p1, p2}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_1a} :catch_1c

    move-object v0, p1

    goto :goto_27

    :catch_1c
    move-exception p1

    .line 133
    sget-object p2, Lanet/channel/security/b;->a:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getBytes"

    invoke-static {p2, v2, v0, p1, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_27
    :goto_27
    return-object v0
.end method

.method public isSecOff()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public saveBytes(Landroid/content/Context;Ljava/lang/String;[B)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_2b

    if-eqz p3, :cond_2b

    .line 99
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_2b

    .line 103
    :cond_c
    :try_start_c
    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 105
    invoke-virtual {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 107
    invoke-interface {p1, p2, p3}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->putByteArray(Ljava/lang/String;[B)I

    move-result p1
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_1c} :catch_20

    if-eqz p1, :cond_2b

    const/4 v0, 0x1

    goto :goto_2b

    :catch_20
    move-exception p1

    .line 112
    sget-object p2, Lanet/channel/security/b;->a:Ljava/lang/String;

    const/4 p3, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "saveBytes"

    invoke-static {p2, v2, p3, p1, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2b
    :goto_2b
    return v0
.end method

.method public sign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 46
    sget-boolean v0, Lanet/channel/security/b;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4e

    if-eqz p1, :cond_4e

    .line 48
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    sget-object v0, Lanet/channel/security/b;->c:Ljava/util/Map;

    .line 49
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_4e

    .line 54
    :cond_16
    :try_start_16
    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSecureSignatureComp()Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 57
    new-instance v0, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;

    invoke-direct {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;-><init>()V

    .line 58
    iput-object p3, v0, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    .line 59
    iget-object p3, v0, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    const-string v2, "INPUT"

    invoke-interface {p3, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object p3, Lanet/channel/security/b;->c:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, v0, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->requestType:I

    .line 61
    iget-object p2, p0, Lanet/channel/security/b;->d:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;->signRequest(Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_42} :catch_43

    return-object p1

    :catch_43
    move-exception p1

    .line 64
    sget-object p2, Lanet/channel/security/b;->a:Ljava/lang/String;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string p4, "Securityguard sign request failed."

    invoke-static {p2, p4, v1, p1, p3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_4e
    :goto_4e
    return-object v1
.end method
