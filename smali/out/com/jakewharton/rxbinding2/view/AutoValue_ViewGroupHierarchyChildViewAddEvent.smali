.class final Lcom/jakewharton/rxbinding2/view/AutoValue_ViewGroupHierarchyChildViewAddEvent;
.super Lcom/jakewharton/rxbinding2/view/ViewGroupHierarchyChildViewAddEvent;
.source "AutoValue_ViewGroupHierarchyChildViewAddEvent.java"


# instance fields
.field private final child:Landroid/view/View;

.field private final view:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 3

    .line 15
    invoke-direct {p0}, Lcom/jakewharton/rxbinding2/view/ViewGroupHierarchyChildViewAddEvent;-><init>()V

    if-eqz p1, :cond_14

    .line 19
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/view/AutoValue_ViewGroupHierarchyChildViewAddEvent;->view:Landroid/view/ViewGroup;

    if-eqz p2, :cond_c

    .line 23
    iput-object p2, p0, Lcom/jakewharton/rxbinding2/view/AutoValue_ViewGroupHierarchyChildViewAddEvent;->child:Landroid/view/View;

    return-void

    .line 21
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null child"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_14
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null view"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public child()Landroid/view/View;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/view/AutoValue_ViewGroupHierarchyChildViewAddEvent;->child:Landroid/view/View;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 51
    :cond_4
    instance-of v1, p1, Lcom/jakewharton/rxbinding2/view/ViewGroupHierarchyChildViewAddEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    .line 52
    check-cast p1, Lcom/jakewharton/rxbinding2/view/ViewGroupHierarchyChildViewAddEvent;

    .line 53
    iget-object v1, p0, Lcom/jakewharton/rxbinding2/view/AutoValue_ViewGroupHierarchyChildViewAddEvent;->view:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/jakewharton/rxbinding2/view/ViewGroupHierarchyChildViewAddEvent;->view()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/view/AutoValue_ViewGroupHierarchyChildViewAddEvent;->child:Landroid/view/View;

    .line 54
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding2/view/ViewGroupHierarchyChildViewAddEvent;->child()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    goto :goto_25

    :cond_24
    move v0, v2

    :goto_25
    return v0

    :cond_26
    return v2
.end method

.method public hashCode()I
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/view/AutoValue_ViewGroupHierarchyChildViewAddEvent;->view:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 65
    iget-object v1, p0, Lcom/jakewharton/rxbinding2/view/AutoValue_ViewGroupHierarchyChildViewAddEvent;->child:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewGroupHierarchyChildViewAddEvent{view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/view/AutoValue_ViewGroupHierarchyChildViewAddEvent;->view:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", child="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/view/AutoValue_ViewGroupHierarchyChildViewAddEvent;->child:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public view()Landroid/view/ViewGroup;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/view/AutoValue_ViewGroupHierarchyChildViewAddEvent;->view:Landroid/view/ViewGroup;

    return-object v0
.end method
