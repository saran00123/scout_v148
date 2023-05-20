.class public Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field public content:Landroid/view/ViewGroup;

.field public item_adapter_record_check_box:Landroid/widget/CheckBox;

.field public item_adapter_record_cover:Landroid/widget/ImageView;

.field public item_adapter_record_cover_status:Landroid/widget/ImageView;

.field public item_adapter_record_createtime:Landroid/widget/TextView;

.field public item_adapter_record_download_layout:Landroid/widget/LinearLayout;

.field public item_adapter_record_download_percent:Landroid/widget/TextView;

.field public item_adapter_record_duration:Landroid/widget/TextView;

.field public item_adapter_record_filename:Landroid/widget/TextView;

.field public item_adapter_record_filesize:Landroid/widget/TextView;

.field public item_adpter_record_download_progress:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;Landroid/view/View;)V
    .registers 3

    .line 203
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->this$0:Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;

    .line 204
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
