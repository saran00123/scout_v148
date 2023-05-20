.class Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$4;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 104
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;-><init>()V

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->access$002(Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;)Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    .line 105
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;)Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    move-result-object p1

    const-string v0, "ABCDEFG"

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->setId(Ljava/lang/String;)V

    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getInstance()Lcom/pilotlab/rollereye/Controller/FilePathController;

    move-result-object v0

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Global;->getP2PService()Lcom/pilotlab/rollereye/P2P/P2PService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PService;->getList_client()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getCamVideoPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "test.mpg"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 107
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;)Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->setLocal_path(Ljava/lang/String;)V

    .line 108
    new-instance p1, Lcom/pilotlab/rollereye/P2P/P2PDownload;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;)Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    move-result-object v0

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Global;->getP2PService()Lcom/pilotlab/rollereye/P2P/P2PService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PService;->getList_client()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-direct {p1, v0, v1}, Lcom/pilotlab/rollereye/P2P/P2PDownload;-><init>(Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;Lcom/pilotlab/rollereye/P2P/P2PClient;)V

    .line 109
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->downloadBegin()V

    return-void
.end method
