.class Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$19;
.super Ljava/lang/Object;
.source "ScoutActivity.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->onResume()V
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
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V
    .registers 2

    .line 562
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$19;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Long;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 565
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$19;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 562
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$19;->accept(Ljava/lang/Long;)V

    return-void
.end method
