.class Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "CloudRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;

.field final synthetic val$gridManager:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .registers 3

    .line 167
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$1;->this$0:Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$1;->val$gridManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 5

    .line 170
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "--111111111111---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$1;->this$0:Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->access$000(Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$1;->this$0:Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->access$000(Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt p1, v0, :cond_31

    return v1

    .line 174
    :cond_31
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$1;->this$0:Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->getItemViewType(I)I

    move-result p1

    const/16 v0, 0x123

    if-ne p1, v0, :cond_3c

    return v1

    .line 178
    :cond_3c
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$1;->val$gridManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1
.end method
