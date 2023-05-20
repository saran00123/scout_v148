.class Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity$1;
.super Ljava/lang/Object;
.source "ExoPlayActivity.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChange(I)V
    .registers 3

    if-nez p1, :cond_d

    .line 133
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_18

    .line 135
    :cond_d
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_18
    return-void
.end method
