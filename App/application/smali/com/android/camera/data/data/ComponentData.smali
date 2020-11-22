.class public abstract Lcom/android/camera/data/data/ComponentData;
.super Ljava/lang/Object;
.source "ComponentData.java"


# instance fields
.field protected volatile mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mParentDataItem:Lcom/android/camera/data/data/DataItemBase;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/DataItemBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lcom/android/camera/data/data/DataItemBase;",
            ">(TD;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    return-void
.end method


# virtual methods
.method protected checkValueValid(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 107
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 108
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getComponentValue(I)Ljava/lang/String;
    .locals 3

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/ComponentData;->checkValueValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->resetComponentValue(I)V

    .line 48
    iget-object v1, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getKey(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public abstract getDefaultValue(I)Ljava/lang/String;
.end method

.method public abstract getDisplayTitleString()I
.end method

.method public abstract getItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKey(I)Ljava/lang/String;
.end method

.method public getValueDisplayString(I)I
    .locals 4

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v1

    .line 67
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    .line 68
    iget-object v3, v2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    iget p0, v2, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    return p0

    .line 73
    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getKey(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v0

    const-string p0, "invalid value %1$s for %2$s"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ComponentData"

    .line 74
    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {}, Lcom/android/camera/Util;->isDebugOsBuild()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p0, -0x2

    return p0

    .line 76
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getValueSelectedDrawable(I)I
    .locals 4

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v1

    .line 84
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    .line 85
    iget-object v3, v2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    iget p0, v2, Lcom/android/camera/data/data/ComponentDataItem;->mIconSelectedRes:I

    return p0

    .line 90
    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getKey(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v0

    const-string p0, "invalid value %1$s for %2$s"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ComponentData"

    .line 91
    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {}, Lcom/android/camera/Util;->isDebugOsBuild()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p0, -0x1

    return p0

    .line 93
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected resetComponentValue(I)V
    .locals 0

    return-void
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEvent;->isTransient()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getKey(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Lcom/android/camera/data/data/DataItemBase;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getKey(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    :goto_0
    return-void
.end method
