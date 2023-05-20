.class public Lcom/pilotlab/rollereye/UI/Adapter/PreviewAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "PreviewAdapter.java"


# instance fields
.field private total_record_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;",
            ">;>;"
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
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;",
            ">;>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 22
    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/PreviewAdapter;->total_record_list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/PreviewAdapter;->total_record_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .registers 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/PreviewAdapter;->total_record_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "snapshot"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 30
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/PreviewAdapter;->total_record_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment;->newInstance(Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1

    .line 32
    :cond_2e
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/PreviewAdapter;->total_record_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;->newInstance(Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;)Lcom/pilotlab/rollereye/UI/Fragment/PreviewExoFragment;

    move-result-object p1

    return-object p1
.end method
