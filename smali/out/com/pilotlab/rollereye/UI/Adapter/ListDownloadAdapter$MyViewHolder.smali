.class public Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ListDownloadAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field public content:Landroid/view/ViewGroup;

.field item_adapter_scratch_delete_btn:Landroid/widget/ImageButton;

.field item_adapter_scratch_download_btn:Landroid/widget/ImageButton;

.field item_adapter_scratch_download_name:Landroid/widget/TextView;

.field item_adapter_scratch_download_time:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;Landroid/view/View;)V
    .registers 3

    .line 125
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$MyViewHolder;->this$0:Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;

    .line 126
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
