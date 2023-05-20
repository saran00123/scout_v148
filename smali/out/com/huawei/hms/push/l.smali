.class public Lcom/huawei/hms/push/l;
.super Ljava/lang/Object;
.source "NotificationIconUtil.java"


# direct methods
.method public static a(Landroid/content/Context;)I
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    if-nez v0, :cond_27

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "btn_star_big_on"

    const-string v1, "drawable"

    const-string v2, "android"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string p0, "PushSelfShowLog"

    const-string v1, "icon is btn_star_big_on "

    .line 3
    invoke-static {p0, v1}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_27

    const v0, 0x1080093

    const-string v1, "icon is sym_def_app_icon "

    .line 4
    invoke-static {p0, v1}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    return v0
.end method

.method public static a(Landroid/content/Context;Lcom/huawei/hms/push/k;)Landroid/graphics/Bitmap;
    .registers 7

    const-string v0, ""

    const-string v1, "PushSelfShowLog"

    const/4 v2, 0x0

    if-eqz p0, :cond_7c

    if-nez p1, :cond_a

    goto :goto_7c

    .line 5
    :cond_a
    :try_start_a
    sget v3, Lcom/huawei/hms/android/HwBuildEx$VERSION;->EMUI_SDK_INT:I
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_c} :catch_65
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_c} :catch_4d

    const/16 v4, 0xb

    if-lt v3, v4, :cond_16

    const-string p0, "huawei phone, and emui5.0, need not show large icon."

    .line 6
    :try_start_12
    invoke-static {v1, p0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_15} :catch_65
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_4d

    return-object v2

    :cond_16
    const-string v3, "com.huawei.android.pushagent"

    .line 7
    :try_start_18
    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7c

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_27} :catch_65
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_27} :catch_4d

    const-string v4, "get left bitmap from "

    :try_start_29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 10
    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 11
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_4c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_4c} :catch_65
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_4c} :catch_4d

    goto :goto_7c

    :catch_4d
    move-exception p0

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7c

    :catch_65
    move-exception p0

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7c
    :goto_7c
    return-object v2
.end method

.method public static a(Landroid/content/Context;Landroid/app/Notification$Builder;Lcom/huawei/hms/push/k;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    if-eqz p0, :cond_f

    if-eqz p1, :cond_f

    if-nez p2, :cond_7

    goto :goto_f

    .line 15
    :cond_7
    invoke-static {p0, p2}, Lcom/huawei/hms/push/l;->b(Landroid/content/Context;Lcom/huawei/hms/push/k;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    return-void

    :cond_f
    :goto_f
    const-string p0, "PushSelfShowLog"

    const-string p1, "msg is null"

    .line 16
    invoke-static {p0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/huawei/hms/push/k;)I
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_38

    if-nez p1, :cond_6

    goto :goto_38

    .line 1
    :cond_6
    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 2
    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->m()Ljava/lang/String;

    move-result-object p1

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3
    array-length v1, p1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_28

    const/4 v0, 0x1

    .line 4
    aget-object v0, p1, v0

    const/4 v1, 0x2

    aget-object p1, p1, v1

    invoke-static {p0, v0, p1}, Lcom/huawei/hms/push/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_28
    if-nez v0, :cond_30

    const-string p1, "com.huawei.messaging.default_notification_icon"

    .line 5
    invoke-static {p0, p1}, Lcom/huawei/hms/push/r;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    :cond_30
    if-eqz v0, :cond_33

    goto :goto_37

    .line 6
    :cond_33
    invoke-static {p0}, Lcom/huawei/hms/push/l;->a(Landroid/content/Context;)I

    move-result v0

    :goto_37
    return v0

    :cond_38
    :goto_38
    const-string p0, "PushSelfShowLog"

    const-string p1, "enter getSmallIconId, context or msg is null"

    .line 7
    invoke-static {p0, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
