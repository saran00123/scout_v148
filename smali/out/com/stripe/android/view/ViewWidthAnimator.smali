.class public final Lcom/stripe/android/view/ViewWidthAnimator;
.super Ljava/lang/Object;
.source "ViewWidthAnimator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J$\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/android/view/ViewWidthAnimator;",
        "",
        "view",
        "Landroid/view/View;",
        "duration",
        "",
        "(Landroid/view/View;J)V",
        "animate",
        "",
        "startWidth",
        "",
        "endWidth",
        "onAnimationEnd",
        "Lkotlin/Function0;",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final duration:J

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;J)V
    .registers 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/view/ViewWidthAnimator;->view:Landroid/view/View;

    iput-wide p2, p0, Lcom/stripe/android/view/ViewWidthAnimator;->duration:J

    return-void
.end method

.method public static final synthetic access$getView$p(Lcom/stripe/android/view/ViewWidthAnimator;)Landroid/view/View;
    .registers 1

    .line 8
    iget-object p0, p0, Lcom/stripe/android/view/ViewWidthAnimator;->view:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final animate(IILkotlin/jvm/functions/Function0;)V
    .registers 6
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onAnimationEnd"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 18
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 19
    iget-wide v0, p0, Lcom/stripe/android/view/ViewWidthAnimator;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 20
    new-instance v0, Lcom/stripe/android/view/ViewWidthAnimator$animate$$inlined$also$lambda$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/stripe/android/view/ViewWidthAnimator$animate$$inlined$also$lambda$1;-><init>(Lcom/stripe/android/view/ViewWidthAnimator;ILkotlin/jvm/functions/Function0;)V

    check-cast v0, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 28
    new-instance v0, Lcom/stripe/android/view/ViewWidthAnimator$animate$$inlined$also$lambda$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/stripe/android/view/ViewWidthAnimator$animate$$inlined$also$lambda$2;-><init>(Lcom/stripe/android/view/ViewWidthAnimator;ILkotlin/jvm/functions/Function0;)V

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .line 27
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 40
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
