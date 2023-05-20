.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$35;
.super Ljava/lang/Object;
.source "Camera2Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->dialogChoice(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

.field final synthetic val$listChoiseAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;)V
    .registers 3

    .line 2513
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$35;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$35;->val$listChoiseAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 2515
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$35;->val$listChoiseAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;->getmSeleted()Ljava/util/Set;

    move-result-object p2

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$35;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    const v1, 0x7f110346

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 2516
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$35;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$7900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    goto :goto_20

    .line 2519
    :cond_1b
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$35;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$5900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V

    .line 2521
    :goto_20
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
