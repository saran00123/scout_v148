.class Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StyledPlayerControlViewLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

.field final synthetic val$styledPlayerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .registers 3

    .line 208
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$3;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$3;->val$styledPlayerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 216
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$3;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->access$400(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;I)V

    .line 217
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$3;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->access$500(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 218
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$3;->val$styledPlayerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$3;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->access$600(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->post(Ljava/lang/Runnable;)Z

    .line 219
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$3;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->access$502(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;Z)Z

    :cond_1f
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 211
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$3;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->access$400(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;I)V

    return-void
.end method
