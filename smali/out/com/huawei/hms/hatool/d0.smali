.class public Lcom/huawei/hms/hatool/d0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static c:Lcom/huawei/hms/hatool/d0;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static f()Lcom/huawei/hms/hatool/d0;
    .registers 1

    sget-object v0, Lcom/huawei/hms/hatool/d0;->c:Lcom/huawei/hms/hatool/d0;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/huawei/hms/hatool/d0;->g()V

    :cond_7
    sget-object v0, Lcom/huawei/hms/hatool/d0;->c:Lcom/huawei/hms/hatool/d0;

    return-object v0
.end method

.method public static declared-synchronized g()V
    .registers 2

    const-class v0, Lcom/huawei/hms/hatool/d0;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/huawei/hms/hatool/d0;->c:Lcom/huawei/hms/hatool/d0;

    if-nez v1, :cond_e

    new-instance v1, Lcom/huawei/hms/hatool/d0;

    invoke-direct {v1}, Lcom/huawei/hms/hatool/d0;-><init>()V

    sput-object v1, Lcom/huawei/hms/hatool/d0;->c:Lcom/huawei/hms/hatool/d0;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/hms/hatool/d0;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/huawei/hms/hatool/d0;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/hatool/d0;->a:Ljava/lang/String;

    :cond_e
    iget-object v0, p0, Lcom/huawei/hms/hatool/d0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/huawei/hms/hatool/d0;->e()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "analytics_keystore"

    invoke-static {v0, p1}, Lcom/huawei/secure/android/common/encrypt/keystore/aes/AesGcmKS;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_d
    const-string v0, ""

    :goto_f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4f

    const-string v0, "hmsSdk"

    const-string v1, "deCrypt work key first"

    invoke-static {v0, v1}, Lcom/huawei/hms/hatool/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/huawei/hms/hatool/d0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hms/hatool/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_41

    const/16 p1, 0x10

    invoke-static {p1}, Lcom/huawei/secure/android/common/encrypt/utils/EncryptUtil;->generateSecureRandomStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/hms/hatool/d0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/huawei/hms/hatool/d0;->c(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/huawei/hms/hatool/d0;->e()Z

    move-result p1

    if-eqz p1, :cond_4f

    :goto_3d
    invoke-static {}, Lcom/huawei/hms/hatool/c0;->d()Z

    goto :goto_4f

    :cond_41
    invoke-virtual {p0}, Lcom/huawei/hms/hatool/d0;->e()Z

    move-result p1

    if-eqz p1, :cond_4f

    invoke-virtual {p0, v0}, Lcom/huawei/hms/hatool/d0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/huawei/hms/hatool/d0;->c(Ljava/lang/String;)Z

    goto :goto_3d

    :cond_4f
    :goto_4f
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/huawei/hms/hatool/d0;->e()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "analytics_keystore"

    invoke-static {v0, p1}, Lcom/huawei/secure/android/common/encrypt/keystore/aes/AesGcmKS;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-virtual {p0}, Lcom/huawei/hms/hatool/d0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hms/hatool/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .registers 3

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/huawei/secure/android/common/encrypt/utils/EncryptUtil;->generateSecureRandomStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/hms/hatool/d0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/hms/hatool/d0;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    iput-object v0, p0, Lcom/huawei/hms/hatool/d0;->a:Ljava/lang/String;

    :cond_12
    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/huawei/hms/hatool/b;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Privacy_MY"

    const-string v2, "PrivacyData"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hms/hatool/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/huawei/secure/android/common/encrypt/utils/EncryptUtil;->generateSecureRandomStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/hms/hatool/d0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/hms/hatool/d0;->c(Ljava/lang/String;)Z

    return-object v0

    :cond_22
    invoke-virtual {p0, v0}, Lcom/huawei/hms/hatool/d0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Z
    .registers 6

    const-string v0, "hmsSdk"

    const-string v1, "refresh sp aes key"

    invoke-static {v0, v1}, Lcom/huawei/hms/hatool/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string p1, "refreshLocalKey(): encrypted key is empty"

    invoke-static {v0, p1}, Lcom/huawei/hms/hatool/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_14
    invoke-static {}, Lcom/huawei/hms/hatool/b;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Privacy_MY"

    const-string v2, "PrivacyData"

    invoke-static {v0, v1, v2, p1}, Lcom/huawei/hms/hatool/g0;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hms/hatool/b;->f()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "flashKeyTime"

    invoke-static {p1, v1, v0, v2, v3}, Lcom/huawei/hms/hatool/g0;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    const/4 p1, 0x1

    return p1
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/hms/hatool/d0;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Lcom/huawei/hms/hatool/c0;

    invoke-direct {v0}, Lcom/huawei/hms/hatool/c0;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/hms/hatool/c0;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/hatool/d0;->b:Ljava/lang/String;

    :cond_13
    iget-object v0, p0, Lcom/huawei/hms/hatool/d0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
