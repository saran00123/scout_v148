.class final Landroidx/core/view/WindowInsetsCompat$TypeImpl30;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TypeImpl30"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static toPlatformType(I)I
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_4
    const/16 v3, 0x100

    if-gt v1, v3, :cond_54

    and-int v3, p0, v1

    if-eqz v3, :cond_51

    if-eq v1, v0, :cond_4c

    const/4 v3, 0x2

    if-eq v1, v3, :cond_47

    const/4 v3, 0x4

    if-eq v1, v3, :cond_42

    const/16 v3, 0x8

    if-eq v1, v3, :cond_3d

    const/16 v3, 0x10

    if-eq v1, v3, :cond_38

    const/16 v3, 0x20

    if-eq v1, v3, :cond_33

    const/16 v3, 0x40

    if-eq v1, v3, :cond_2e

    const/16 v3, 0x80

    if-eq v1, v3, :cond_29

    goto :goto_51

    .line 2093
    :cond_29
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v3

    goto :goto_50

    .line 2090
    :cond_2e
    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v3

    goto :goto_50

    .line 2087
    :cond_33
    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v3

    goto :goto_50

    .line 2084
    :cond_38
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v3

    goto :goto_50

    .line 2081
    :cond_3d
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    goto :goto_50

    .line 2078
    :cond_42
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v3

    goto :goto_50

    .line 2075
    :cond_47
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    goto :goto_50

    .line 2072
    :cond_4c
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v3

    :goto_50
    or-int/2addr v2, v3

    :cond_51
    :goto_51
    shl-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_54
    return v2
.end method
