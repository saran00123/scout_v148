.class public Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CloudRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field public content:Landroid/view/ViewGroup;

.field public item_adapter_cloud_record_check_box:Landroid/widget/CheckBox;

.field public item_adapter_cloud_record_cover:Landroid/widget/ImageView;

.field public item_adapter_cloud_record_cover_status:Landroid/widget/ImageView;

.field public item_adapter_cloud_record_createtime:Landroid/widget/TextView;

.field public item_adapter_cloud_record_duration:Landroid/widget/TextView;

.field public item_adapter_cloud_record_expire_date:Landroid/widget/TextView;

.field public item_adapter_cloud_record_filesize:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;Landroid/view/View;)V
    .registers 3

    .line 202
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$MyViewHolder;->this$0:Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;

    .line 203
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
