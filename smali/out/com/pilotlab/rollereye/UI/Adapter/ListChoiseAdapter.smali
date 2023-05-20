.class public Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListChoiseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter$ViewHolder;,
        Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter$selectCountListener;
    }
.end annotation


# instance fields
.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSeleted:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;->mSeleted:Ljava/util/Set;

    .line 44
    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;->dataList:Ljava/util/List;

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 46
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 18
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;->getItem(I)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    const/4 v0, 0x0

    if-nez p2, :cond_2b

    .line 70
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d00a2

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 72
    new-instance p3, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter$ViewHolder;-><init>(Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;)V

    const v1, 0x7f0a020d

    .line 73
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p3, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter$ViewHolder;->cbCheckBox:Landroid/widget/CheckBox;

    const v1, 0x7f0a03e2

    .line 75
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter$ViewHolder;->item_adapter_choise_txt:Landroid/widget/TextView;

    .line 76
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_31

    .line 78
    :cond_2b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter$ViewHolder;

    .line 81
    :goto_31
    iget-object v1, p3, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter$ViewHolder;->cbCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 82
    iget-object v0, p3, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter$ViewHolder;->item_adapter_choise_txt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;->dataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "value"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;->mSeleted:Ljava/util/Set;

    if-eqz v0, :cond_67

    .line 84
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;->dataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    .line 85
    iget-object p1, p3, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter$ViewHolder;->cbCheckBox:Landroid/widget/CheckBox;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_67
    return-object p2
.end method

.method public getmSeleted()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;->mSeleted:Ljava/util/Set;

    return-object v0
.end method

.method public setmSeleted(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;->mSeleted:Ljava/util/Set;

    return-void
.end method
