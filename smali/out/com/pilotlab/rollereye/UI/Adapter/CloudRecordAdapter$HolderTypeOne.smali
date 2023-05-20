.class Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;
.super Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$MyViewHolder;
.source "CloudRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HolderTypeOne"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;Landroid/view/View;)V
    .registers 3

    .line 283
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;->this$0:Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;

    .line 284
    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$MyViewHolder;-><init>(Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;Landroid/view/View;)V

    .line 285
    move-object p1, p2

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;->content:Landroid/view/ViewGroup;

    const p1, 0x7f0a03e5

    .line 286
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;->item_adapter_cloud_record_cover:Landroid/widget/ImageView;

    const p1, 0x7f0a03e4

    .line 287
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;->item_adapter_cloud_record_check_box:Landroid/widget/CheckBox;

    const p1, 0x7f0a03e7

    .line 288
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;->item_adapter_cloud_record_cover_status:Landroid/widget/ImageView;

    const p1, 0x7f0a03e8

    .line 289
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;->item_adapter_cloud_record_createtime:Landroid/widget/TextView;

    const p1, 0x7f0a03ec

    .line 290
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;->item_adapter_cloud_record_filesize:Landroid/widget/TextView;

    const p1, 0x7f0a03e9

    .line 291
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;->item_adapter_cloud_record_duration:Landroid/widget/TextView;

    const p1, 0x7f0a03ea

    .line 292
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;->item_adapter_cloud_record_expire_date:Landroid/widget/TextView;

    return-void
.end method
