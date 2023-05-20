.class public final Lcom/stripe/android/view/CardInputWidget$CardNumberSlideEndAnimation$1;
.super Lcom/stripe/android/view/CardInputWidget$AnimationEndListener;
.source "CardInputWidget.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/view/CardInputWidget$CardNumberSlideEndAnimation;-><init>(Landroid/view/View;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/stripe/android/view/CardInputWidget$CardNumberSlideEndAnimation$1",
        "Lcom/stripe/android/view/CardInputWidget$AnimationEndListener;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/view/animation/Animation;",
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
.field final synthetic this$0:Lcom/stripe/android/view/CardInputWidget$CardNumberSlideEndAnimation;


# direct methods
.method constructor <init>(Lcom/stripe/android/view/CardInputWidget$CardNumberSlideEndAnimation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1141
    iput-object p1, p0, Lcom/stripe/android/view/CardInputWidget$CardNumberSlideEndAnimation$1;->this$0:Lcom/stripe/android/view/CardInputWidget$CardNumberSlideEndAnimation;

    invoke-direct {p0}, Lcom/stripe/android/view/CardInputWidget$AnimationEndListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3
    .param p1    # Landroid/view/animation/Animation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1143
    iget-object p1, p0, Lcom/stripe/android/view/CardInputWidget$CardNumberSlideEndAnimation$1;->this$0:Lcom/stripe/android/view/CardInputWidget$CardNumberSlideEndAnimation;

    invoke-static {p1}, Lcom/stripe/android/view/CardInputWidget$CardNumberSlideEndAnimation;->access$getFocusOnEndView$p(Lcom/stripe/android/view/CardInputWidget$CardNumberSlideEndAnimation;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
