.class public Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ScheduleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field public content:Landroid/view/ViewGroup;

.field public item_adapter_schudule_name:Landroid/widget/TextView;

.field public item_adapter_schudule_switch:Landroid/widget/Switch;

.field public item_adapter_schudule_time:Landroid/widget/TextView;

.field public item_adapter_schudule_week:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;Landroid/view/View;)V
    .registers 3

    .line 119
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$MyViewHolder;->this$0:Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;

    .line 120
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
