.class Lmoe/codeest/enviews/ENPlayView$2;
.super Ljava/lang/Object;
.source "ENPlayView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmoe/codeest/enviews/ENPlayView;->pause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmoe/codeest/enviews/ENPlayView;


# direct methods
.method constructor <init>(Lmoe/codeest/enviews/ENPlayView;)V
    .registers 2

    .line 198
    iput-object p1, p0, Lmoe/codeest/enviews/ENPlayView$2;->this$0:Lmoe/codeest/enviews/ENPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 201
    iget-object v0, p0, Lmoe/codeest/enviews/ENPlayView$2;->this$0:Lmoe/codeest/enviews/ENPlayView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {v0, p1}, Lmoe/codeest/enviews/ENPlayView;->access$002(Lmoe/codeest/enviews/ENPlayView;F)F

    .line 202
    iget-object p1, p0, Lmoe/codeest/enviews/ENPlayView$2;->this$0:Lmoe/codeest/enviews/ENPlayView;

    invoke-virtual {p1}, Lmoe/codeest/enviews/ENPlayView;->invalidate()V

    return-void
.end method
