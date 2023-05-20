.class public Lcom/pilotlab/rollereye/UI/Adapter/CloudPreviewAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "CloudPreviewAdapter.java"


# instance fields
.field private total_record_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 21
    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudPreviewAdapter;->total_record_list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudPreviewAdapter;->total_record_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudPreviewAdapter;->total_record_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getFile_type()I

    move-result v0

    sget v1, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->type_snapshot:I

    if-ne v0, v1, :cond_1d

    .line 29
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudPreviewAdapter;->total_record_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewImageFragment;->newInstance(Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1

    .line 31
    :cond_1d
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudPreviewAdapter;->total_record_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->newInstance(Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;)Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;

    move-result-object p1

    return-object p1
.end method
