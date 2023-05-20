.class public Lcom/huawei/hms/framework/common/SettingUtil;
.super Ljava/lang/Object;
.source "SettingUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSecureInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 4

    .line 40
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_d

    :catch_5
    move-exception p0

    const-string p1, "SettingUtil"

    const-string v0, "Settings Secure getInt throwFromSystemServer:"

    .line 42
    invoke-static {p1, v0, p0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_d
    return p2
.end method

.method public static getSystemInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 4

    .line 30
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_d

    :catch_5
    move-exception p0

    const-string p1, "SettingUtil"

    const-string v0, "Settings System getInt throwFromSystemServer:"

    .line 32
    invoke-static {p1, v0, p0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_d
    return p2
.end method
