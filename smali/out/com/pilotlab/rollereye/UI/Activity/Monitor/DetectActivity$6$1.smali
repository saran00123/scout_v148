.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$6$1;
.super Ljava/lang/Object;
.source "DetectActivity.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$6;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$6;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$6;)V
    .registers 2

    .line 183
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$6$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Long;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 186
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$6$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$6;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    const/16 v0, 0x82

    invoke-virtual {p1, v0}, Landroidx/core/widget/NestedScrollView;->fullScroll(I)Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 183
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$6$1;->accept(Ljava/lang/Long;)V

    return-void
.end method
