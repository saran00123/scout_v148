.class public Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field public content:Landroid/view/ViewGroup;

.field private item_adapter_message_date:Landroid/widget/TextView;

.field private item_adapter_message_status:Landroid/widget/ImageView;

.field private item_adapter_message_title:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;Landroid/view/View;)V
    .registers 3

    .line 87
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;->this$0:Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;

    .line 88
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;)Landroid/widget/ImageView;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;->item_adapter_message_status:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;->item_adapter_message_status:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;)Landroid/widget/TextView;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;->item_adapter_message_title:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;->item_adapter_message_title:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;)Landroid/widget/TextView;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;->item_adapter_message_date:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;->item_adapter_message_date:Landroid/widget/TextView;

    return-object p1
.end method
