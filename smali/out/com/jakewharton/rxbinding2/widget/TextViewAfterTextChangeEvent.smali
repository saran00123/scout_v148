.class public abstract Lcom/jakewharton/rxbinding2/widget/TextViewAfterTextChangeEvent;
.super Ljava/lang/Object;
.source "TextViewAfterTextChangeEvent.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/widget/TextView;Landroid/text/Editable;)Lcom/jakewharton/rxbinding2/widget/TextViewAfterTextChangeEvent;
    .registers 3
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/text/Editable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 22
    new-instance v0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewAfterTextChangeEvent;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewAfterTextChangeEvent;-><init>(Landroid/widget/TextView;Landroid/text/Editable;)V

    return-object v0
.end method


# virtual methods
.method public abstract editable()Landroid/text/Editable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract view()Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
