.class Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$4;
.super Ljava/lang/Object;
.source "ScratchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->showChoiseDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;I)V
    .registers 3

    .line 432
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    iput p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 435
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 436
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->dismiss()V

    .line 438
    :cond_11
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$4;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ScratchBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 439
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-direct {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;-><init>(Landroid/app/Activity;)V

    .line 441
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "*/*"

    .line 445
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->setContentType(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/Share$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    .line 446
    invoke-static {v2, p1}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->setShareFileUri(Landroid/net/Uri;)Lcom/pilotlab/rollereye/CustomerView/Share$Builder;

    move-result-object p1

    const-string v1, "Share Srcatch"

    invoke-virtual {p1, v1}, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/Share$Builder;

    .line 447
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->build()Lcom/pilotlab/rollereye/CustomerView/Share;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/Share;->shareBySystem()V

    return-void
.end method
