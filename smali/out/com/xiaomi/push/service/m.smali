.class public Lcom/xiaomi/push/service/m;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/xiaomi/push/ir;)Lcom/xiaomi/push/iw;
    .registers 2

    invoke-virtual {p0}, Lcom/xiaomi/push/ir;->a()[B

    move-result-object p0

    new-instance v0, Lcom/xiaomi/push/iw;

    invoke-direct {v0}, Lcom/xiaomi/push/iw;-><init>()V

    :try_start_9
    invoke-static {v0, p0}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jg;[B)V
    :try_end_c
    .catch Lcom/xiaomi/push/jl; {:try_start_9 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "ext_fcm_container_buffer"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mipush_app_package"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_46

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_46

    :try_start_1b
    const-string v1, "mipush_apps_scrt"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaomi/push/service/m;->b([BLjava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_3a

    invoke-static {p1}, Lcom/xiaomi/push/service/w;->a([B)Lcom/xiaomi/push/ir;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Lcom/xiaomi/push/ir;[B)Lcom/xiaomi/push/service/aj$c;

    goto :goto_46

    :cond_3a
    const-string p0, "notify fcm notification error \uff1adencrypt failed"

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_3f} :catch_40

    goto :goto_46

    :catch_40
    move-exception p0

    const-string p1, "notify fcm notification error "

    invoke-static {p1, p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_46
    :goto_46
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_21

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_21

    :cond_f
    const/4 v0, 0x0

    const-string v1, "mipush_apps_scrt"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_21
    :goto_21
    return-void
.end method

.method public static a([BLjava/lang/String;)[B
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-string p0, "secret is empty, return null"

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-object v1

    :cond_d
    invoke-static {p1}, Lcom/xiaomi/push/bl;->a(Ljava/lang/String;)[B

    move-result-object p1

    :try_start_11
    invoke-static {p1, p0}, Lcom/xiaomi/push/h;->b([B[B)[B

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    const-string p1, "encryption error. "

    invoke-static {p1, p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static b([BLjava/lang/String;)[B
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-string p0, "secret is empty, return null"

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-object v1

    :cond_d
    invoke-static {p1}, Lcom/xiaomi/push/bl;->a(Ljava/lang/String;)[B

    move-result-object p1

    :try_start_11
    invoke-static {p1, p0}, Lcom/xiaomi/push/h;->a([B[B)[B

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    const-string p1, "dencryption error. "

    invoke-static {p1, p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
