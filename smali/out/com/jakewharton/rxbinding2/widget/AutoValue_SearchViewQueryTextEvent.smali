.class final Lcom/jakewharton/rxbinding2/widget/AutoValue_SearchViewQueryTextEvent;
.super Lcom/jakewharton/rxbinding2/widget/SearchViewQueryTextEvent;
.source "AutoValue_SearchViewQueryTextEvent.java"


# instance fields
.field private final isSubmitted:Z

.field private final queryText:Ljava/lang/CharSequence;

.field private final view:Landroid/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/widget/SearchView;Ljava/lang/CharSequence;Z)V
    .registers 4

    .line 16
    invoke-direct {p0}, Lcom/jakewharton/rxbinding2/widget/SearchViewQueryTextEvent;-><init>()V

    if-eqz p1, :cond_16

    .line 20
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SearchViewQueryTextEvent;->view:Landroid/widget/SearchView;

    if-eqz p2, :cond_e

    .line 24
    iput-object p2, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SearchViewQueryTextEvent;->queryText:Ljava/lang/CharSequence;

    .line 25
    iput-boolean p3, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SearchViewQueryTextEvent;->isSubmitted:Z

    return-void

    .line 22
    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null queryText"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_16
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null view"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 59
    :cond_4
    instance-of v1, p1, Lcom/jakewharton/rxbinding2/widget/SearchViewQueryTextEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    .line 60
    check-cast p1, Lcom/jakewharton/rxbinding2/widget/SearchViewQueryTextEvent;

    .line 61
    iget-object v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SearchViewQueryTextEvent;->view:Landroid/widget/SearchView;

    invoke-virtual {p1}, Lcom/jakewharton/rxbinding2/widget/SearchViewQueryTextEvent;->view()Landroid/widget/SearchView;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SearchViewQueryTextEvent;->queryText:Ljava/lang/CharSequence;

    .line 62
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding2/widget/SearchViewQueryTextEvent;->queryText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-boolean v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SearchViewQueryTextEvent;->isSubmitted:Z

    .line 63
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding2/widget/SearchViewQueryTextEvent;->isSubmitted()Z

    move-result p1

    if-ne v1, p1, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v2

    :goto_2d
    return v0

    :cond_2e
    return v2
.end method

.method public hashCode()I
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SearchViewQueryTextEvent;->view:Landroid/widget/SearchView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 74
    iget-object v2, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SearchViewQueryTextEvent;->queryText:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 76
    iget-boolean v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SearchViewQueryTextEvent;->isSubmitted:Z

    if-eqz v1, :cond_1a

    const/16 v1, 0x4cf

    goto :goto_1c

    :cond_1a
    const/16 v1, 0x4d5

    :goto_1c
    xor-int/2addr v0, v1

    return v0
.end method

.method public isSubmitted()Z
    .registers 2

    .line 42
    iget-boolean v0, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SearchViewQueryTextEvent;->isSubmitted:Z

    return v0
.end method

.method public queryText()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SearchViewQueryTextEvent;->queryText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchViewQueryTextEvent{view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SearchViewQueryTextEvent;->view:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", queryText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SearchViewQueryTextEvent;->queryText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isSubmitted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SearchViewQueryTextEvent;->isSubmitted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public view()Landroid/widget/SearchView;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SearchViewQueryTextEvent;->view:Landroid/widget/SearchView;

    return-object v0
.end method
