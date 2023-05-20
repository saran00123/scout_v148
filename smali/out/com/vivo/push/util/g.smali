.class public final Lcom/vivo/push/util/g;
.super Ljava/lang/Object;
.source "DefaultNotifyDataAdapter.java"

# interfaces
.implements Lcom/vivo/push/util/BaseNotifyDataAdapter;


# static fields
.field private static e:I

.field private static f:I


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    const-string v0, "DefaultNotifyDataAdapter"

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_6b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_6b

    :cond_10
    const-string v1, "\\."

    .line 95
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 96
    array-length v3, v1

    if-lez v3, :cond_1e

    const/4 p1, 0x0

    .line 97
    aget-object p1, v1, p1

    .line 100
    :cond_1e
    :try_start_1e
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_22
    if-lez p1, :cond_6b

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "vivo_push_ard"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get notify icon : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vivo/push/util/n;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v3, p0, Lcom/vivo/push/util/g;->a:Landroid/content/res/Resources;

    const-string v4, "drawable"

    iget-object v5, p0, Lcom/vivo/push/util/g;->b:Ljava/lang/String;

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_64

    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "find notify icon : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/vivo/push/util/n;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_63} :catch_67

    return v3

    :cond_64
    add-int/lit8 p1, p1, -0x1

    goto :goto_22

    :catch_67
    move-exception p1

    .line 111
    invoke-static {v0, p1}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6b
    :goto_6b
    return v2
.end method

.method private static a(I)Z
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_7

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 4

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_8

    return v1

    .line 84
    :cond_8
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_16

    const-string p0, "DefaultNotifyDataAdapter"

    const-string v0, "systemVersion is not suit "

    .line 85
    invoke-static {p0, v0}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_16
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final getDefaultNotifyIcon()I
    .registers 7

    .line 47
    sget v0, Lcom/vivo/push/util/g;->e:I

    invoke-static {v0}, Lcom/vivo/push/util/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 48
    sget v0, Lcom/vivo/push/util/g;->e:I

    return v0

    .line 50
    :cond_b
    iget-object v0, p0, Lcom/vivo/push/util/g;->d:Ljava/lang/String;

    .line 1074
    invoke-static {v0}, Lcom/vivo/push/util/g;->a(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "_notifyicon"

    if-nez v1, :cond_17

    const/4 v0, -0x1

    goto :goto_1b

    .line 1077
    :cond_17
    invoke-direct {p0, v0, v2}, Lcom/vivo/push/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 51
    :goto_1b
    sput v0, Lcom/vivo/push/util/g;->e:I

    invoke-static {v0}, Lcom/vivo/push/util/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 52
    sget v0, Lcom/vivo/push/util/g;->e:I

    return v0

    .line 54
    :cond_26
    iget-object v0, p0, Lcom/vivo/push/util/g;->c:Ljava/lang/String;

    .line 1119
    :goto_28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "drawable"

    if-eqz v1, :cond_3b

    .line 1120
    iget-object v0, p0, Lcom/vivo/push/util/g;->a:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/vivo/push/util/g;->b:Ljava/lang/String;

    const-string v2, "vivo_push_notifyicon"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1122
    :cond_3b
    iget-object v1, p0, Lcom/vivo/push/util/g;->a:Landroid/content/res/Resources;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "vivo_push_rom"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/push/util/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v4, v3, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_57

    return v1

    :cond_57
    const/4 v1, 0x0

    .line 1126
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_28
.end method

.method public final getDefaultSmallIconId()I
    .registers 7

    .line 59
    sget v0, Lcom/vivo/push/util/g;->f:I

    invoke-static {v0}, Lcom/vivo/push/util/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 60
    sget v0, Lcom/vivo/push/util/g;->f:I

    return v0

    .line 62
    :cond_b
    iget-object v0, p0, Lcom/vivo/push/util/g;->d:Ljava/lang/String;

    .line 1132
    invoke-static {v0}, Lcom/vivo/push/util/g;->a(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "_icon"

    if-nez v1, :cond_17

    const/4 v0, -0x1

    goto :goto_1b

    .line 1135
    :cond_17
    invoke-direct {p0, v0, v2}, Lcom/vivo/push/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 63
    :goto_1b
    sput v0, Lcom/vivo/push/util/g;->f:I

    invoke-static {v0}, Lcom/vivo/push/util/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 64
    sget v0, Lcom/vivo/push/util/g;->f:I

    return v0

    .line 66
    :cond_26
    iget-object v0, p0, Lcom/vivo/push/util/g;->c:Ljava/lang/String;

    .line 1140
    :goto_28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "drawable"

    if-eqz v1, :cond_3b

    .line 1141
    iget-object v0, p0, Lcom/vivo/push/util/g;->a:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/vivo/push/util/g;->b:Ljava/lang/String;

    const-string v2, "vivo_push_icon"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1143
    :cond_3b
    iget-object v1, p0, Lcom/vivo/push/util/g;->a:Landroid/content/res/Resources;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "vivo_push_rom"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/push/util/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v4, v3, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_57

    return v1

    :cond_57
    const/4 v1, 0x0

    .line 1147
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_28
.end method

.method public final getNotifyMode(Lcom/vivo/push/model/InsideNotificationItem;)I
    .registers 3

    .line 154
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_8

    const/4 p1, 0x2

    return p1

    :cond_8
    const/4 p1, 0x1

    return p1
.end method

.method public final init(Landroid/content/Context;)V
    .registers 3

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/push/util/g;->b:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/push/util/g;->a:Landroid/content/res/Resources;

    .line 41
    invoke-static {}, Lcom/vivo/push/util/i;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/push/util/g;->c:Ljava/lang/String;

    .line 42
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object p1, p0, Lcom/vivo/push/util/g;->d:Ljava/lang/String;

    return-void
.end method
