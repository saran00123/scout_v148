.class public abstract Landroidx/core/app/NotificationCompat$Style;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Style"
.end annotation


# instance fields
.field mBigContentTitle:Ljava/lang/CharSequence;

.field protected mBuilder:Landroidx/core/app/NotificationCompat$Builder;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field mSummaryText:Ljava/lang/CharSequence;

.field mSummaryTextSet:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 2430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2438
    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Style;->mSummaryTextSet:Z

    return-void
.end method

.method private calculateTopPadding()I
    .registers 6

    .line 2896
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2897
    sget v1, Landroidx/core/R$dimen;->notification_top_pad:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2898
    sget v2, Landroidx/core/R$dimen;->notification_top_pad_large_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2900
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3fa66666    # 1.3f

    .line 2901
    invoke-static {v0, v3, v4}, Landroidx/core/app/NotificationCompat$Style;->constrain(FFF)F

    move-result v0

    sub-float/2addr v0, v3

    const v4, 0x3e999998    # 0.29999995f

    div-float/2addr v0, v4

    sub-float/2addr v3, v0

    int-to-float v1, v1

    mul-float/2addr v3, v1

    int-to-float v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v3, v0

    .line 2905
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private static constrain(FFF)F
    .registers 4

    cmpg-float v0, p0, p1

    if-gez v0, :cond_6

    move p0, p1

    goto :goto_b

    :cond_6
    cmpl-float p1, p0, p2

    if-lez p1, :cond_b

    move p0, p2

    :cond_b
    :goto_b
    return p0
.end method

.method static constructCompatStyleByName(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Style;
    .registers 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_69

    const/4 v0, -0x1

    .line 2609
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_6c

    goto :goto_40

    :sswitch_f
    const-string v1, "androidx.core.app.NotificationCompat$MessagingStyle"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_40

    move v0, v2

    goto :goto_40

    :sswitch_19
    const-string v1, "androidx.core.app.NotificationCompat$BigTextStyle"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_40

    const/4 v0, 0x0

    goto :goto_40

    :sswitch_23
    const-string v1, "androidx.core.app.NotificationCompat$InboxStyle"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_40

    move v0, v4

    goto :goto_40

    :sswitch_2d
    const-string v1, "androidx.core.app.NotificationCompat$BigPictureStyle"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_40

    move v0, v5

    goto :goto_40

    :sswitch_37
    const-string v1, "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_40

    move v0, v3

    :cond_40
    :goto_40
    if-eqz v0, :cond_63

    if-eq v0, v5, :cond_5d

    if-eq v0, v4, :cond_57

    if-eq v0, v3, :cond_51

    if-eq v0, v2, :cond_4b

    goto :goto_69

    .line 2619
    :cond_4b
    new-instance p0, Landroidx/core/app/NotificationCompat$MessagingStyle;

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>()V

    return-object p0

    .line 2617
    :cond_51
    new-instance p0, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    return-object p0

    .line 2615
    :cond_57
    new-instance p0, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    return-object p0

    .line 2613
    :cond_5d
    new-instance p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    return-object p0

    .line 2611
    :cond_63
    new-instance p0, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    return-object p0

    :cond_69
    :goto_69
    const/4 p0, 0x0

    return-object p0

    nop

    :sswitch_data_6c
    .sparse-switch
        -0x2ab80d9c -> :sswitch_37
        -0xa3fb04d -> :sswitch_2d
        0x366a678b -> :sswitch_23
        0x36cfe824 -> :sswitch_19
        0x7c9f11cd -> :sswitch_f
    .end sparse-switch
.end method

.method private static constructCompatStyleByPlatformName(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Style;
    .registers 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 2583
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_6a

    .line 2584
    const-class v1, Landroid/app/Notification$BigPictureStyle;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2585
    new-instance p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    return-object p0

    .line 2587
    :cond_1c
    const-class v1, Landroid/app/Notification$BigTextStyle;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2588
    new-instance p0, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    return-object p0

    .line 2590
    :cond_2e
    const-class v1, Landroid/app/Notification$InboxStyle;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 2591
    new-instance p0, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    return-object p0

    .line 2593
    :cond_40
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_6a

    .line 2594
    const-class v1, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 2595
    new-instance p0, Landroidx/core/app/NotificationCompat$MessagingStyle;

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>()V

    return-object p0

    .line 2597
    :cond_58
    const-class v1, Landroid/app/Notification$DecoratedCustomViewStyle;

    .line 2598
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2597
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6a

    .line 2599
    new-instance p0, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    return-object p0

    :cond_6a
    return-object v0
.end method

.method static constructCompatStyleForBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Style;
    .registers 2
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "androidx.core.app.extra.COMPAT_TEMPLATE"

    .line 2629
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationCompat$Style;->constructCompatStyleByName(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Style;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    const-string v0, "android.selfDisplayName"

    .line 2636
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_53

    const-string v0, "android.messagingStyleUser"

    .line 2637
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_53

    :cond_1e
    const-string v0, "android.picture"

    .line 2639
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2640
    new-instance p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    return-object p0

    :cond_2c
    const-string v0, "android.bigText"

    .line 2641
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2642
    new-instance p0, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    return-object p0

    :cond_3a
    const-string v0, "android.textLines"

    .line 2643
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2644
    new-instance p0, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    return-object p0

    :cond_48
    const-string v0, "android.template"

    .line 2647
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/app/NotificationCompat$Style;->constructCompatStyleByPlatformName(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Style;

    move-result-object p0

    return-object p0

    .line 2638
    :cond_53
    :goto_53
    new-instance p0, Landroidx/core/app/NotificationCompat$MessagingStyle;

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>()V

    return-object p0
.end method

.method static constructStyleForExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Style;
    .registers 3
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2652
    invoke-static {p0}, Landroidx/core/app/NotificationCompat$Style;->constructCompatStyleForBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Style;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 2657
    :cond_8
    :try_start_8
    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Style;->restoreFromCompatExtras(Landroid/os/Bundle;)V
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    return-object v1
.end method

.method private createColoredBitmap(III)Landroid/graphics/Bitmap;
    .registers 5

    .line 2837
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(Landroidx/core/graphics/drawable/IconCompat;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private createColoredBitmap(Landroidx/core/graphics/drawable/IconCompat;II)Landroid/graphics/Bitmap;
    .registers 7
    .param p1    # Landroidx/core/graphics/drawable/IconCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2842
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p3, :cond_f

    .line 2843
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_10

    :cond_f
    move v0, p3

    :goto_10
    if-nez p3, :cond_16

    .line 2844
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    .line 2845
    :cond_16
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    .line 2846
    invoke-virtual {p1, v2, v2, v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz p2, :cond_30

    .line 2848
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p2, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2851
    :cond_30
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2852
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v1
.end method

.method private createIconWithBackground(IIII)Landroid/graphics/Bitmap;
    .registers 7

    .line 2858
    sget v0, Landroidx/core/R$drawable;->notification_icon_background:I

    if-nez p4, :cond_5

    const/4 p4, 0x0

    :cond_5
    invoke-direct {p0, v0, p4, p2}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(III)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 2860
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2861
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v1, 0x1

    .line 2862
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    sub-int/2addr p2, p3

    .line 2863
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p3, p2

    .line 2864
    invoke-virtual {p1, p2, p2, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2865
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    const/4 p3, -0x1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2866
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p4
.end method

.method public static extractStyleFromNotification(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$Style;
    .registers 1
    .param p0    # Landroid/app/Notification;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 2570
    invoke-static {p0}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 2574
    :cond_8
    invoke-static {p0}, Landroidx/core/app/NotificationCompat$Style;->constructStyleForExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Style;

    move-result-object p0

    return-object p0
.end method

.method private hideNormalContent(Landroid/widget/RemoteViews;)V
    .registers 4

    .line 2890
    sget v0, Landroidx/core/R$id;->title:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2891
    sget v0, Landroidx/core/R$id;->text2:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2892
    sget v0, Landroidx/core/R$id;->text:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method


# virtual methods
.method public addCompatExtras(Landroid/os/Bundle;)V
    .registers 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 2530
    iget-boolean v0, p0, Landroidx/core/app/NotificationCompat$Style;->mSummaryTextSet:Z

    if-eqz v0, :cond_b

    .line 2531
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mSummaryText:Ljava/lang/CharSequence;

    const-string v1, "android.summaryText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2533
    :cond_b
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_14

    const-string v1, "android.title.big"

    .line 2534
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2536
    :cond_14
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Style;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    const-string v1, "androidx.core.app.extra.COMPAT_TEMPLATE"

    .line 2538
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method public apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .registers 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    return-void
.end method

.method public applyStandardTemplate(ZIZ)Landroid/widget/RemoteViews;
    .registers 16
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 2671
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2672
    new-instance v7, Landroid/widget/RemoteViews;

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2676
    iget-object p2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->getPriority()I

    move-result p2

    const/4 v1, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ge p2, v1, :cond_22

    move p2, v8

    goto :goto_23

    :cond_22
    move p2, v9

    .line 2677
    :goto_23
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/16 v10, 0x10

    if-lt v2, v10, :cond_50

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_50

    const-string v2, "setBackgroundResource"

    if-eqz p2, :cond_42

    .line 2680
    sget p2, Landroidx/core/R$id;->notification_background:I

    sget v4, Landroidx/core/R$drawable;->notification_bg_low:I

    invoke-virtual {v7, p2, v2, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2682
    sget p2, Landroidx/core/R$id;->icon:I

    sget v4, Landroidx/core/R$drawable;->notification_template_icon_low_bg:I

    invoke-virtual {v7, p2, v2, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_50

    .line 2685
    :cond_42
    sget p2, Landroidx/core/R$id;->notification_background:I

    sget v4, Landroidx/core/R$drawable;->notification_bg:I

    invoke-virtual {v7, p2, v2, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2687
    sget p2, Landroidx/core/R$id;->icon:I

    sget v4, Landroidx/core/R$drawable;->notification_template_icon_bg:I

    invoke-virtual {v7, p2, v2, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2692
    :cond_50
    :goto_50
    iget-object p2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object p2, p2, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    const/16 v11, 0x8

    if-eqz p2, :cond_b9

    .line 2695
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v10, :cond_6b

    .line 2696
    sget p2, Landroidx/core/R$id;->icon:I

    invoke-virtual {v7, p2, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2697
    sget p2, Landroidx/core/R$id;->icon:I

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v7, p2, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_70

    .line 2699
    :cond_6b
    sget p2, Landroidx/core/R$id;->icon:I

    invoke-virtual {v7, p2, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_70
    if-eqz p1, :cond_104

    .line 2701
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object p1, p1, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget p1, p1, Landroid/app/Notification;->icon:I

    if-eqz p1, :cond_104

    .line 2702
    sget p1, Landroidx/core/R$dimen;->notification_right_icon_size:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 2704
    sget p2, Landroidx/core/R$dimen;->notification_small_icon_background_padding:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    sub-int p2, p1, p2

    .line 2706
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_a4

    .line 2707
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 2711
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->getColor()I

    move-result v2

    .line 2707
    invoke-direct {p0, v1, p1, p2, v2}, Landroidx/core/app/NotificationCompat$Style;->createIconWithBackground(IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2712
    sget p2, Landroidx/core/R$id;->right_icon:I

    invoke-virtual {v7, p2, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_b3

    .line 2714
    :cond_a4
    sget p1, Landroidx/core/R$id;->right_icon:I

    iget-object p2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object p2, p2, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget p2, p2, Landroid/app/Notification;->icon:I

    invoke-virtual {p0, p2, v1}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(II)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v7, p1, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2717
    :goto_b3
    sget p1, Landroidx/core/R$id;->right_icon:I

    invoke-virtual {v7, p1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_104

    :cond_b9
    if-eqz p1, :cond_104

    .line 2719
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object p1, p1, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget p1, p1, Landroid/app/Notification;->icon:I

    if-eqz p1, :cond_104

    .line 2720
    sget p1, Landroidx/core/R$id;->icon:I

    invoke-virtual {v7, p1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2721
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_f5

    .line 2722
    sget p1, Landroidx/core/R$dimen;->notification_large_icon_width:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sget p2, Landroidx/core/R$dimen;->notification_big_circle_margin:I

    .line 2724
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr p1, p2

    .line 2725
    sget p2, Landroidx/core/R$dimen;->notification_small_icon_size_as_large:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 2727
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 2731
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->getColor()I

    move-result v2

    .line 2727
    invoke-direct {p0, v1, p1, p2, v2}, Landroidx/core/app/NotificationCompat$Style;->createIconWithBackground(IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2732
    sget p2, Landroidx/core/R$id;->icon:I

    invoke-virtual {v7, p2, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_104

    .line 2734
    :cond_f5
    sget p1, Landroidx/core/R$id;->icon:I

    iget-object p2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object p2, p2, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget p2, p2, Landroid/app/Notification;->icon:I

    invoke-virtual {p0, p2, v1}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(II)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v7, p1, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2738
    :cond_104
    :goto_104
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object p1, p1, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    if-eqz p1, :cond_113

    .line 2739
    sget p1, Landroidx/core/R$id;->title:I

    iget-object p2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object p2, p2, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v7, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2741
    :cond_113
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object p1, p1, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_124

    .line 2742
    sget p1, Landroidx/core/R$id;->text:I

    iget-object p2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object p2, p2, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v7, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    move p1, v8

    goto :goto_125

    :cond_124
    move p1, v9

    .line 2746
    :goto_125
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, v3, :cond_131

    iget-object p2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object p2, p2, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_131

    move p2, v8

    goto :goto_132

    :cond_131
    move p2, v9

    .line 2747
    :goto_132
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    if-eqz v1, :cond_149

    .line 2748
    sget p1, Landroidx/core/R$id;->info:I

    iget-object p2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object p2, p2, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    invoke-virtual {v7, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2749
    sget p1, Landroidx/core/R$id;->info:I

    invoke-virtual {v7, p1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_146
    move p1, v8

    move p2, p1

    goto :goto_184

    .line 2752
    :cond_149
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    if-lez v1, :cond_17f

    .line 2753
    sget p1, Landroidx/core/R$integer;->status_bar_notification_info_maxnum:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 2755
    iget-object p2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget p2, p2, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    if-le p2, p1, :cond_167

    .line 2756
    sget p1, Landroidx/core/R$id;->info:I

    sget p2, Landroidx/core/R$string;->status_bar_notification_info_overflow:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_179

    .line 2759
    :cond_167
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object p1

    .line 2760
    sget p2, Landroidx/core/R$id;->info:I

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2762
    :goto_179
    sget p1, Landroidx/core/R$id;->info:I

    invoke-virtual {v7, p1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_146

    .line 2766
    :cond_17f
    sget v1, Landroidx/core/R$id;->info:I

    invoke-virtual {v7, v1, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2770
    :goto_184
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1b2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v10, :cond_1b2

    .line 2771
    sget v1, Landroidx/core/R$id;->text:I

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2772
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1ad

    .line 2773
    sget v1, Landroidx/core/R$id;->text2:I

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2774
    sget v1, Landroidx/core/R$id;->text2:I

    invoke-virtual {v7, v1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move v1, v8

    goto :goto_1b3

    .line 2777
    :cond_1ad
    sget v1, Landroidx/core/R$id;->text2:I

    invoke-virtual {v7, v1, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_1b2
    move v1, v9

    :goto_1b3
    if-eqz v1, :cond_1d1

    .line 2783
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v10, :cond_1d1

    if-eqz p3, :cond_1c7

    .line 2786
    sget p3, Landroidx/core/R$dimen;->notification_subtext_size:I

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    .line 2788
    sget v0, Landroidx/core/R$id;->text:I

    invoke-virtual {v7, v0, v9, p3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 2792
    :cond_1c7
    sget v2, Landroidx/core/R$id;->line1:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 2795
    :cond_1d1
    iget-object p3, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p3}, Landroidx/core/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_233

    .line 2796
    iget-object p2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-boolean p2, p2, Landroidx/core/app/NotificationCompat$Builder;->mUseChronometer:Z

    if-eqz p2, :cond_220

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v10, :cond_220

    .line 2797
    sget p2, Landroidx/core/R$id;->chronometer:I

    invoke-virtual {v7, p2, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2798
    sget p2, Landroidx/core/R$id;->chronometer:I

    iget-object p3, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 2799
    invoke-virtual {p3}, Landroidx/core/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v0

    .line 2800
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    const-string p3, "setBase"

    .line 2798
    invoke-virtual {v7, p2, p3, v0, v1}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 2801
    sget p2, Landroidx/core/R$id;->chronometer:I

    const-string p3, "setStarted"

    invoke-virtual {v7, p2, p3, v8}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 2802
    iget-object p2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-boolean p2, p2, Landroidx/core/app/NotificationCompat$Builder;->mChronometerCountDown:Z

    if-eqz p2, :cond_232

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x18

    if-lt p2, p3, :cond_232

    .line 2803
    sget p2, Landroidx/core/R$id;->chronometer:I

    iget-object p3, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-boolean p3, p3, Landroidx/core/app/NotificationCompat$Builder;->mChronometerCountDown:Z

    invoke-virtual {v7, p2, p3}, Landroid/widget/RemoteViews;->setChronometerCountDown(IZ)V

    goto :goto_232

    .line 2807
    :cond_220
    sget p2, Landroidx/core/R$id;->time:I

    invoke-virtual {v7, p2, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2808
    sget p2, Landroidx/core/R$id;->time:I

    iget-object p3, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p3}, Landroidx/core/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v0

    const-string p3, "setTime"

    invoke-virtual {v7, p2, p3, v0, v1}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    :cond_232
    :goto_232
    move p2, v8

    .line 2812
    :cond_233
    sget p3, Landroidx/core/R$id;->right_side:I

    if-eqz p2, :cond_239

    move p2, v9

    goto :goto_23a

    :cond_239
    move p2, v11

    :goto_23a
    invoke-virtual {v7, p3, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2813
    sget p2, Landroidx/core/R$id;->line3:I

    if-eqz p1, :cond_242

    goto :goto_243

    :cond_242
    move v9, v11

    :goto_243
    invoke-virtual {v7, p2, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object v7
.end method

.method public build()Landroid/app/Notification;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2458
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v0, :cond_9

    .line 2459
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 10
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 2878
    invoke-direct {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->hideNormalContent(Landroid/widget/RemoteViews;)V

    .line 2879
    sget v0, Landroidx/core/R$id;->notification_main_column:I

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 2880
    sget v0, Landroidx/core/R$id;->notification_main_column:I

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 2881
    sget p2, Landroidx/core/R$id;->notification_main_column:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2882
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_2a

    .line 2884
    sget v2, Landroidx/core/R$id;->notification_main_column_container:I

    const/4 v3, 0x0

    .line 2885
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;->calculateTopPadding()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    .line 2884
    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    :cond_2a
    return-void
.end method

.method protected clearCompatExtraKeys(Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const-string v0, "android.summaryText"

    .line 2559
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "android.title.big"

    .line 2560
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "androidx.core.app.extra.COMPAT_TEMPLATE"

    .line 2561
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public createColoredBitmap(II)Landroid/graphics/Bitmap;
    .registers 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2825
    invoke-direct {p0, p1, p2, v0}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(III)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method createColoredBitmap(Landroidx/core/graphics/drawable/IconCompat;I)Landroid/graphics/Bitmap;
    .registers 4
    .param p1    # Landroidx/core/graphics/drawable/IconCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2833
    invoke-direct {p0, p1, p2, v0}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(Landroidx/core/graphics/drawable/IconCompat;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public displayCustomViewInline()Z
    .registers 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected getClassName()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public makeBigContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .registers 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public makeContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .registers 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public makeHeadsUpContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .registers 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected restoreFromCompatExtras(Landroid/os/Bundle;)V
    .registers 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const-string v0, "android.summaryText"

    .line 2547
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2548
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mSummaryText:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    .line 2549
    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Style;->mSummaryTextSet:Z

    :cond_11
    const-string v0, "android.title.big"

    .line 2551
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setBuilder(Landroidx/core/app/NotificationCompat$Builder;)V
    .registers 3
    .param p1    # Landroidx/core/app/NotificationCompat$Builder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2444
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-eq v0, p1, :cond_d

    .line 2445
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 2446
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz p1, :cond_d

    .line 2447
    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_d
    return-void
.end method
