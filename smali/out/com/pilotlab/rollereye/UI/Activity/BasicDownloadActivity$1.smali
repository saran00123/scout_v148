.class Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity$1;
.super Ljava/lang/Object;
.source "BasicDownloadActivity.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->initPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Boolean;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity$1;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
