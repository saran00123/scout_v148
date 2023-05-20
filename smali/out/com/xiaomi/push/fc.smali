.class public Lcom/xiaomi/push/fc;
.super Lcom/xiaomi/push/ff;


# instance fields
.field private a:I

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/ff;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/high16 p1, 0x1000000

    iput p1, p0, Lcom/xiaomi/push/fc;->a:I

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Lcom/xiaomi/push/fc;
    .registers 4

    invoke-virtual {p0}, Lcom/xiaomi/push/fc;->b()Z

    move-result v0

    if-eqz v0, :cond_28

    if-eqz p1, :cond_28

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v1, 0x3d8

    if-ne v0, v1, :cond_23

    const/16 v0, 0xb8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_23

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/16 v1, 0x68e

    if-gt v0, v1, :cond_23

    iput-object p1, p0, Lcom/xiaomi/push/fc;->b:Landroid/graphics/Bitmap;

    goto :goto_28

    :cond_23
    const-string p1, "colorful notification banner image resolution error, must belong to [984*184, 984*1678]"

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_28
    :goto_28
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/push/fc;
    .registers 3

    invoke-virtual {p0}, Lcom/xiaomi/push/fc;->b()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    :try_start_c
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/push/fc;->a:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_12} :catch_13

    goto :goto_18

    :catch_13
    const-string p1, "parse banner notification image text color error"

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_18
    :goto_18
    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)Lcom/xiaomi/push/ff;
    .registers 2

    return-object p0
.end method

.method protected a()Ljava/lang/String;
    .registers 2

    const-string v0, "notification_banner"

    return-object v0
.end method

.method public a()V
    .registers 8

    invoke-virtual {p0}, Lcom/xiaomi/push/fc;->b()Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/xiaomi/push/fc;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_af

    invoke-super {p0}, Lcom/xiaomi/push/ff;->a()V

    invoke-virtual {p0}, Lcom/xiaomi/push/fc;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/push/fc;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "bg"

    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/xiaomi/push/fc;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0}, Lcom/xiaomi/push/fc;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/push/l;->a(Landroid/content/Context;)I

    move-result v4

    const/16 v5, 0xa

    if-lt v4, v5, :cond_3e

    invoke-virtual {p0}, Lcom/xiaomi/push/fc;->a()Landroid/widget/RemoteViews;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/push/fc;->b:Landroid/graphics/Bitmap;

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-virtual {p0, v5, v6}, Lcom/xiaomi/push/fc;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_44

    :cond_3e
    invoke-virtual {p0}, Lcom/xiaomi/push/fc;->a()Landroid/widget/RemoteViews;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/push/fc;->b:Landroid/graphics/Bitmap;

    :goto_44
    invoke-virtual {v4, v3, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const-string v3, "icon"

    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/xiaomi/push/fc;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/xiaomi/push/fc;->c:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5b

    invoke-virtual {p0}, Lcom/xiaomi/push/fc;->a()Landroid/widget/RemoteViews;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/push/fc;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v3, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_5e

    :cond_5b
    invoke-virtual {p0, v3}, Lcom/xiaomi/push/fc;->a(I)V

    :goto_5e
    const-string v3, "title"

    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/xiaomi/push/fc;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/push/fc;->a()Landroid/widget/RemoteViews;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/fc;->a:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/xiaomi/push/fc;->a:Ljava/util/Map;

    const/high16 v2, 0x1000000

    if-eqz v1, :cond_84

    iget v1, p0, Lcom/xiaomi/push/fc;->a:I

    if-ne v1, v2, :cond_84

    iget-object v1, p0, Lcom/xiaomi/push/fc;->a:Ljava/util/Map;

    const-string v3, "notification_image_text_color"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/fc;->a(Ljava/lang/String;)Lcom/xiaomi/push/fc;

    :cond_84
    invoke-virtual {p0}, Lcom/xiaomi/push/fc;->a()Landroid/widget/RemoteViews;

    move-result-object v1

    iget v3, p0, Lcom/xiaomi/push/fc;->a:I

    if-eq v3, v2, :cond_95

    invoke-virtual {p0, v3}, Lcom/xiaomi/push/fc;->a(I)Z

    move-result v2

    if-eqz v2, :cond_95

    const/high16 v2, -0x1000000

    goto :goto_96

    :cond_95
    const/4 v2, -0x1

    :goto_96
    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    invoke-virtual {p0}, Lcom/xiaomi/push/fc;->a()Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/fc;->a(Landroid/widget/RemoteViews;)Lcom/xiaomi/push/fd;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    const-string v2, "miui.customHeight"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/fc;->a(Landroid/os/Bundle;)Lcom/xiaomi/push/fd;

    goto :goto_b2

    :cond_af
    invoke-virtual {p0}, Lcom/xiaomi/push/fc;->b()V

    :goto_b2
    return-void
.end method

.method protected a()Z
    .registers 8

    invoke-static {}, Lcom/xiaomi/push/l;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/push/fc;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/push/fc;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/push/fc;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaomi/push/fc;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    const-string v6, "bg"

    invoke-virtual {p0, v3, v6, v5, v4}, Lcom/xiaomi/push/fc;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v4, "icon"

    invoke-virtual {p0, v0, v4, v5, v2}, Lcom/xiaomi/push/fc;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v6, "title"

    invoke-virtual {p0, v0, v6, v5, v2}, Lcom/xiaomi/push/fc;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v3, :cond_4f

    if-eqz v4, :cond_4f

    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Lcom/xiaomi/push/fc;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/l;->a(Landroid/content/Context;)I

    move-result v0

    const/16 v2, 0x9

    if-lt v0, v2, :cond_4f

    const/4 v1, 0x1

    :cond_4f
    return v1
.end method

.method public b(Landroid/graphics/Bitmap;)Lcom/xiaomi/push/fc;
    .registers 3

    invoke-virtual {p0}, Lcom/xiaomi/push/fc;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    iput-object p1, p0, Lcom/xiaomi/push/fc;->c:Landroid/graphics/Bitmap;

    :cond_a
    return-object p0
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/fc;->a(Landroid/graphics/Bitmap;)Lcom/xiaomi/push/ff;

    move-result-object p1

    return-object p1
.end method
