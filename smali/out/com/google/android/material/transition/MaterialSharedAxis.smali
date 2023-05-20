.class public final Lcom/google/android/material/transition/MaterialSharedAxis;
.super Lcom/google/android/material/transition/MaterialVisibility;
.source "MaterialSharedAxis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/MaterialSharedAxis$Axis;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/transition/MaterialVisibility<",
        "Lcom/google/android/material/transition/VisibilityAnimatorProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_THEMED_DURATION_ATTR:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field private static final DEFAULT_THEMED_EASING_ATTR:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field public static final X:I = 0x0

.field public static final Y:I = 0x1

.field public static final Z:I = 0x2


# instance fields
.field private final axis:I

.field private final forward:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 86
    sget v0, Lcom/google/android/material/R$attr;->motionDurationLong1:I

    sput v0, Lcom/google/android/material/transition/MaterialSharedAxis;->DEFAULT_THEMED_DURATION_ATTR:I

    .line 87
    sget v0, Lcom/google/android/material/R$attr;->motionEasingStandard:I

    sput v0, Lcom/google/android/material/transition/MaterialSharedAxis;->DEFAULT_THEMED_EASING_ATTR:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 5

    .line 90
    invoke-static {p1, p2}, Lcom/google/android/material/transition/MaterialSharedAxis;->createPrimaryAnimatorProvider(IZ)Lcom/google/android/material/transition/VisibilityAnimatorProvider;

    move-result-object v0

    invoke-static {}, Lcom/google/android/material/transition/MaterialSharedAxis;->createSecondaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/transition/MaterialVisibility;-><init>(Lcom/google/android/material/transition/VisibilityAnimatorProvider;Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V

    .line 91
    iput p1, p0, Lcom/google/android/material/transition/MaterialSharedAxis;->axis:I

    .line 92
    iput-boolean p2, p0, Lcom/google/android/material/transition/MaterialSharedAxis;->forward:Z

    return-void
.end method

.method private static createPrimaryAnimatorProvider(IZ)Lcom/google/android/material/transition/VisibilityAnimatorProvider;
    .registers 4

    if-eqz p0, :cond_32

    const/4 v0, 0x1

    if-eq p0, v0, :cond_25

    const/4 v0, 0x2

    if-ne p0, v0, :cond_e

    .line 112
    new-instance p0, Lcom/google/android/material/transition/ScaleProvider;

    invoke-direct {p0, p1}, Lcom/google/android/material/transition/ScaleProvider;-><init>(Z)V

    return-object p0

    .line 114
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid axis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_25
    new-instance p0, Lcom/google/android/material/transition/SlideDistanceProvider;

    if-eqz p1, :cond_2c

    const/16 p1, 0x50

    goto :goto_2e

    :cond_2c
    const/16 p1, 0x30

    :goto_2e
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/SlideDistanceProvider;-><init>(I)V

    return-object p0

    .line 108
    :cond_32
    new-instance p0, Lcom/google/android/material/transition/SlideDistanceProvider;

    if-eqz p1, :cond_3a

    const p1, 0x800005

    goto :goto_3d

    :cond_3a
    const p1, 0x800003

    :goto_3d
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/SlideDistanceProvider;-><init>(I)V

    return-object p0
.end method

.method private static createSecondaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;
    .registers 1

    .line 119
    new-instance v0, Lcom/google/android/material/transition/FadeThroughProvider;

    invoke-direct {v0}, Lcom/google/android/material/transition/FadeThroughProvider;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic addAdditionalAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V
    .registers 2
    .param p1    # Lcom/google/android/material/transition/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/transition/MaterialVisibility;->addAdditionalAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V

    return-void
.end method

.method public bridge synthetic clearAdditionalAnimatorProvider()V
    .registers 1

    .line 51
    invoke-super {p0}, Lcom/google/android/material/transition/MaterialVisibility;->clearAdditionalAnimatorProvider()V

    return-void
.end method

.method public getAxis()I
    .registers 2

    .line 97
    iget v0, p0, Lcom/google/android/material/transition/MaterialSharedAxis;->axis:I

    return v0
.end method

.method getDurationThemeAttrResId(Z)I
    .registers 2
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    .line 125
    sget p1, Lcom/google/android/material/transition/MaterialSharedAxis;->DEFAULT_THEMED_DURATION_ATTR:I

    return p1
.end method

.method getEasingThemeAttrResId(Z)I
    .registers 2
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    .line 131
    sget p1, Lcom/google/android/material/transition/MaterialSharedAxis;->DEFAULT_THEMED_EASING_ATTR:I

    return p1
.end method

.method public bridge synthetic getPrimaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 51
    invoke-super {p0}, Lcom/google/android/material/transition/MaterialVisibility;->getPrimaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSecondaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 51
    invoke-super {p0}, Lcom/google/android/material/transition/MaterialVisibility;->getSecondaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;

    move-result-object v0

    return-object v0
.end method

.method public isForward()Z
    .registers 2

    .line 101
    iget-boolean v0, p0, Lcom/google/android/material/transition/MaterialSharedAxis;->forward:Z

    return v0
.end method

.method public bridge synthetic onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/MaterialVisibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/MaterialVisibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeAdditionalAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)Z
    .registers 2
    .param p1    # Lcom/google/android/material/transition/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/transition/MaterialVisibility;->removeAdditionalAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setSecondaryAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V
    .registers 2
    .param p1    # Lcom/google/android/material/transition/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/transition/MaterialVisibility;->setSecondaryAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V

    return-void
.end method
