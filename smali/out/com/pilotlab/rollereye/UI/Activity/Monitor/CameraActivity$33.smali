.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$33;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

.field final synthetic val$datalist:Ljava/util/List;

.field final synthetic val$listChoiseAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;Ljava/util/List;)V
    .registers 4

    .line 2210
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$33;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$33;->val$listChoiseAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;

    iput-object p3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$33;->val$datalist:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 2213
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$33;->val$listChoiseAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;->getmSeleted()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 2214
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$33;->val$listChoiseAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;->getmSeleted()Ljava/util/Set;

    move-result-object p1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$33;->val$datalist:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    const-string p3, "value"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2215
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$33;->val$listChoiseAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;->notifyDataSetChanged()V

    return-void
.end method
