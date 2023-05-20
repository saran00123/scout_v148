.class public final Landroidx/navigation/NavOptions;
.super Ljava/lang/Object;
.source "NavOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavOptions$Builder;
    }
.end annotation


# instance fields
.field private mEnterAnim:I
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation

    .annotation build Landroidx/annotation/AnimatorRes;
    .end annotation
.end field

.field private mExitAnim:I
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation

    .annotation build Landroidx/annotation/AnimatorRes;
    .end annotation
.end field

.field private mPopEnterAnim:I
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation

    .annotation build Landroidx/annotation/AnimatorRes;
    .end annotation
.end field

.field private mPopExitAnim:I
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation

    .annotation build Landroidx/annotation/AnimatorRes;
    .end annotation
.end field

.field private mPopUpTo:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private mPopUpToInclusive:Z

.field private mSingleTop:Z


# direct methods
.method constructor <init>(ZIZIIII)V
    .registers 8
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation

        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation

        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation

        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p7    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation

        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean p1, p0, Landroidx/navigation/NavOptions;->mSingleTop:Z

    .line 45
    iput p2, p0, Landroidx/navigation/NavOptions;->mPopUpTo:I

    .line 46
    iput-boolean p3, p0, Landroidx/navigation/NavOptions;->mPopUpToInclusive:Z

    .line 47
    iput p4, p0, Landroidx/navigation/NavOptions;->mEnterAnim:I

    .line 48
    iput p5, p0, Landroidx/navigation/NavOptions;->mExitAnim:I

    .line 49
    iput p6, p0, Landroidx/navigation/NavOptions;->mPopEnterAnim:I

    .line 50
    iput p7, p0, Landroidx/navigation/NavOptions;->mPopExitAnim:I

    return-void
.end method


# virtual methods
.method public getEnterAnim()I
    .registers 2
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation

    .annotation build Landroidx/annotation/AnimatorRes;
    .end annotation

    .line 91
    iget v0, p0, Landroidx/navigation/NavOptions;->mEnterAnim:I

    return v0
.end method

.method public getExitAnim()I
    .registers 2
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation

    .annotation build Landroidx/annotation/AnimatorRes;
    .end annotation

    .line 100
    iget v0, p0, Landroidx/navigation/NavOptions;->mExitAnim:I

    return v0
.end method

.method public getPopEnterAnim()I
    .registers 2
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation

    .annotation build Landroidx/annotation/AnimatorRes;
    .end annotation

    .line 110
    iget v0, p0, Landroidx/navigation/NavOptions;->mPopEnterAnim:I

    return v0
.end method

.method public getPopExitAnim()I
    .registers 2
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation

    .annotation build Landroidx/annotation/AnimatorRes;
    .end annotation

    .line 120
    iget v0, p0, Landroidx/navigation/NavOptions;->mPopExitAnim:I

    return v0
.end method

.method public getPopUpTo()I
    .registers 2
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .line 73
    iget v0, p0, Landroidx/navigation/NavOptions;->mPopUpTo:I

    return v0
.end method

.method public isPopUpToInclusive()Z
    .registers 2

    .line 82
    iget-boolean v0, p0, Landroidx/navigation/NavOptions;->mPopUpToInclusive:Z

    return v0
.end method

.method public shouldLaunchSingleTop()Z
    .registers 2

    .line 61
    iget-boolean v0, p0, Landroidx/navigation/NavOptions;->mSingleTop:Z

    return v0
.end method
