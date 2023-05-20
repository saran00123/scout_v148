.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$2;
.super Ljava/lang/Object;
.source "PatrolActivity.java"

# interfaces
.implements Lcom/yanzhenjie/recyclerview/OnItemMenuClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->initSwipeRecycleView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)V
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/yanzhenjie/recyclerview/SwipeMenuBridge;I)V
    .registers 4

    .line 193
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/SwipeMenuBridge;->closeMenu()V

    .line 195
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/SwipeMenuBridge;->getDirection()I

    move-result v0

    .line 197
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/SwipeMenuBridge;->getPosition()I

    const/4 p1, -0x1

    if-ne v0, p1, :cond_12

    .line 200
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;I)V

    :cond_12
    return-void
.end method
