.class public Lcom/meizu/cloud/pushsdk/notification/c/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)I
    .registers 4

    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/notification/c/d;->a(Landroid/content/Context;)Lcom/meizu/cloud/pushsdk/notification/c/d;

    move-result-object v0

    const-string v1, "push_expandable_big_image_notification"

    const-string v2, "layout"

    invoke-virtual {v0, p0, v1, v2}, Lcom/meizu/cloud/pushsdk/notification/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;)I
    .registers 4

    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/notification/c/d;->a(Landroid/content/Context;)Lcom/meizu/cloud/pushsdk/notification/c/d;

    move-result-object v0

    const-string v1, "push_expandable_big_text_notification"

    const-string v2, "layout"

    invoke-virtual {v0, p0, v1, v2}, Lcom/meizu/cloud/pushsdk/notification/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;)I
    .registers 6

    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/notification/c/d;->a(Landroid/content/Context;)Lcom/meizu/cloud/pushsdk/notification/c/d;

    move-result-object v0

    invoke-static {}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->getFlymeVersion()I

    move-result v1

    const-string v2, "layout"

    if-lez v1, :cond_16

    const/4 v3, 0x6

    if-gt v1, v3, :cond_16

    const-string v1, "push_pure_pic_notification_f6"

    :goto_11
    invoke-virtual {v0, p0, v1, v2}, Lcom/meizu/cloud/pushsdk/notification/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_16
    const/4 v3, 0x7

    if-ne v1, v3, :cond_1c

    const-string v1, "push_pure_pic_notification_f7"

    goto :goto_11

    :cond_1c
    const/16 v3, 0x8

    if-ne v1, v3, :cond_23

    const-string v1, "push_pure_pic_notification_f8"

    goto :goto_11

    :cond_23
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_3d

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_3d
    const-string v3, "2.0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6c

    const-string v3, "3.0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6c

    const-string v3, "4.0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6c

    const-string v3, "6.0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    goto :goto_6c

    :cond_5e
    const-string v3, "3.3"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    const-string v1, "push_pure_pic_notification_f9_337"

    goto :goto_11

    :cond_69
    const-string v1, "push_pure_pic_notification_f9_275"

    goto :goto_11

    :cond_6c
    :goto_6c
    const-string v1, "push_pure_pic_notification_f9"

    goto :goto_11
.end method

.method public static d(Landroid/content/Context;)I
    .registers 4

    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/notification/c/d;->a(Landroid/content/Context;)Lcom/meizu/cloud/pushsdk/notification/c/d;

    move-result-object v0

    const-string v1, "push_big_notification_title"

    const-string v2, "id"

    invoke-virtual {v0, p0, v1, v2}, Lcom/meizu/cloud/pushsdk/notification/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Landroid/content/Context;)I
    .registers 4

    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/notification/c/d;->a(Landroid/content/Context;)Lcom/meizu/cloud/pushsdk/notification/c/d;

    move-result-object v0

    const-string v1, "push_big_notification_content"

    const-string v2, "id"

    invoke-virtual {v0, p0, v1, v2}, Lcom/meizu/cloud/pushsdk/notification/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static f(Landroid/content/Context;)I
    .registers 4

    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/notification/c/d;->a(Landroid/content/Context;)Lcom/meizu/cloud/pushsdk/notification/c/d;

    move-result-object v0

    const-string v1, "push_big_notification_date"

    const-string v2, "id"

    invoke-virtual {v0, p0, v1, v2}, Lcom/meizu/cloud/pushsdk/notification/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static g(Landroid/content/Context;)I
    .registers 4

    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/notification/c/d;->a(Landroid/content/Context;)Lcom/meizu/cloud/pushsdk/notification/c/d;

    move-result-object v0

    const-string v1, "push_big_bigview_defaultView"

    const-string v2, "id"

    invoke-virtual {v0, p0, v1, v2}, Lcom/meizu/cloud/pushsdk/notification/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static h(Landroid/content/Context;)I
    .registers 4

    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/notification/c/d;->a(Landroid/content/Context;)Lcom/meizu/cloud/pushsdk/notification/c/d;

    move-result-object v0

    const-string v1, "push_big_bigtext_defaultView"

    const-string v2, "id"

    invoke-virtual {v0, p0, v1, v2}, Lcom/meizu/cloud/pushsdk/notification/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Landroid/content/Context;)I
    .registers 4

    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/notification/c/d;->a(Landroid/content/Context;)Lcom/meizu/cloud/pushsdk/notification/c/d;

    move-result-object v0

    const-string v1, "push_pure_bigview_banner"

    const-string v2, "id"

    invoke-virtual {v0, p0, v1, v2}, Lcom/meizu/cloud/pushsdk/notification/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static j(Landroid/content/Context;)I
    .registers 4

    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/notification/c/d;->a(Landroid/content/Context;)Lcom/meizu/cloud/pushsdk/notification/c/d;

    move-result-object v0

    const-string v1, "push_pure_bigview_expanded"

    const-string v2, "id"

    invoke-virtual {v0, p0, v1, v2}, Lcom/meizu/cloud/pushsdk/notification/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static k(Landroid/content/Context;)I
    .registers 4

    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/notification/c/d;->a(Landroid/content/Context;)Lcom/meizu/cloud/pushsdk/notification/c/d;

    move-result-object v0

    const-string v1, "push_big_notification_icon"

    const-string v2, "id"

    invoke-virtual {v0, p0, v1, v2}, Lcom/meizu/cloud/pushsdk/notification/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static l(Landroid/content/Context;)I
    .registers 4

    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/notification/c/d;->a(Landroid/content/Context;)Lcom/meizu/cloud/pushsdk/notification/c/d;

    move-result-object v0

    const-string v1, "stat_sys_third_app_notify"

    const-string v2, "drawable"

    invoke-virtual {v0, p0, v1, v2}, Lcom/meizu/cloud/pushsdk/notification/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static m(Landroid/content/Context;)I
    .registers 4

    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/notification/c/d;->a(Landroid/content/Context;)Lcom/meizu/cloud/pushsdk/notification/c/d;

    move-result-object v0

    const-string v1, "push_pure_close"

    const-string v2, "id"

    invoke-virtual {v0, p0, v1, v2}, Lcom/meizu/cloud/pushsdk/notification/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
