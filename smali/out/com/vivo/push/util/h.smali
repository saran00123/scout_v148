.class public final Lcom/vivo/push/util/h;
.super Ljava/lang/Object;
.source "DefaultNotifyLayoutAdapter.java"

# interfaces
.implements Lcom/vivo/push/util/BaseNotifyLayoutAdapter;


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNotificationLayout()I
    .registers 5

    .line 25
    iget-object v0, p0, Lcom/vivo/push/util/h;->a:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/vivo/push/util/h;->b:Ljava/lang/String;

    const-string v2, "push_notify"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getSuitIconId()I
    .registers 5

    .line 35
    sget-boolean v0, Lcom/vivo/push/util/i;->g:Z

    const-string v1, "id"

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/vivo/push/util/h;->a:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/vivo/push/util/h;->b:Ljava/lang/String;

    const-string v3, "notify_icon_rom30"

    :goto_c
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_11
    sget-boolean v0, Lcom/vivo/push/util/i;->f:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/vivo/push/util/h;->a:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/vivo/push/util/h;->b:Ljava/lang/String;

    const-string v3, "notify_icon_rom20"

    goto :goto_c

    :cond_1c
    iget-object v0, p0, Lcom/vivo/push/util/h;->a:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/vivo/push/util/h;->b:Ljava/lang/String;

    const-string v3, "notify_icon"

    goto :goto_c
.end method

.method public final getTitleColor()I
    .registers 3

    :try_start_0
    const-string v0, "com.android.internal.R$color"

    const-string v1, "vivo_notification_title_text_color"

    .line 47
    invoke-static {v0, v1}, Lcom/vivo/push/util/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_14

    :catch_f
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_14
    if-lez v0, :cond_1d

    .line 53
    iget-object v1, p0, Lcom/vivo/push/util/h;->a:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 55
    :cond_1d
    sget-boolean v0, Lcom/vivo/push/util/i;->g:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_23

    return v1

    .line 57
    :cond_23
    sget-boolean v0, Lcom/vivo/push/util/i;->f:Z

    if-eqz v0, :cond_33

    .line 58
    sget-boolean v0, Lcom/vivo/push/util/i;->g:Z

    if-eqz v0, :cond_32

    const-string v0, "#ff999999"

    .line 59
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_32
    return v1

    :cond_33
    const/high16 v0, -0x1000000

    return v0
.end method

.method public final init(Landroid/content/Context;)V
    .registers 3

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/push/util/h;->b:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/push/util/h;->a:Landroid/content/res/Resources;

    return-void
.end method
