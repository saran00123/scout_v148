.class Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$4;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->imageQuality()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)V
    .registers 2

    .line 511
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 511
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$4;->accept(Ljava/lang/String;)V

    return-void
.end method

.method public accept(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 514
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$1100(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$1200(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 515
    invoke-static {p1}, Lcom/pilotlab/rollereye/Utils/FileUtil;->writeFile(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
