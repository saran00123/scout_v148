.class public Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NasDirectoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field public content:Landroid/view/ViewGroup;

.field public item_adapter_nas_directory_img:Landroid/widget/ImageView;

.field public item_adapter_nas_directory_name:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;Landroid/view/View;)V
    .registers 3

    .line 102
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter$MyViewHolder;->this$0:Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;

    .line 103
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
