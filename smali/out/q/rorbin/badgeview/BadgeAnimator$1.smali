.class Lq/rorbin/badgeview/BadgeAnimator$1;
.super Ljava/lang/Object;
.source "BadgeAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq/rorbin/badgeview/BadgeAnimator;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/PointF;Lq/rorbin/badgeview/QBadgeView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lq/rorbin/badgeview/BadgeAnimator;


# direct methods
.method constructor <init>(Lq/rorbin/badgeview/BadgeAnimator;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lq/rorbin/badgeview/BadgeAnimator$1;->this$0:Lq/rorbin/badgeview/BadgeAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 36
    iget-object p1, p0, Lq/rorbin/badgeview/BadgeAnimator$1;->this$0:Lq/rorbin/badgeview/BadgeAnimator;

    invoke-static {p1}, Lq/rorbin/badgeview/BadgeAnimator;->access$000(Lq/rorbin/badgeview/BadgeAnimator;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq/rorbin/badgeview/QBadgeView;

    if-eqz p1, :cond_19

    .line 37
    invoke-virtual {p1}, Lq/rorbin/badgeview/QBadgeView;->isShown()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_19

    .line 40
    :cond_15
    invoke-virtual {p1}, Lq/rorbin/badgeview/QBadgeView;->invalidate()V

    goto :goto_1e

    .line 38
    :cond_19
    :goto_19
    iget-object p1, p0, Lq/rorbin/badgeview/BadgeAnimator$1;->this$0:Lq/rorbin/badgeview/BadgeAnimator;

    invoke-virtual {p1}, Lq/rorbin/badgeview/BadgeAnimator;->cancel()V

    :goto_1e
    return-void
.end method
