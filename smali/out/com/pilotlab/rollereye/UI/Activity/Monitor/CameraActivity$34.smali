.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$34;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->dialogChoice(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

.field final synthetic val$listChoiseAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;)V
    .registers 3

    .line 2220
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$34;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$34;->val$listChoiseAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 2222
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$34;->val$listChoiseAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;->getmSeleted()Ljava/util/Set;

    move-result-object p2

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$34;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    const v1, 0x7f110346

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 2223
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$34;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$6400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V

    goto :goto_20

    .line 2226
    :cond_1b
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$34;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$5200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V

    .line 2228
    :goto_20
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
