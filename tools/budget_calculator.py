"""Simple CLI budget calculator for TUBITAK-style projects.

You can define line items (category, description, unit cost, quantity)
and get per-category and grand totals.

Usage:
    python tools/budget_calculator.py
"""

from __future__ import annotations

from dataclasses import dataclass
from typing import Dict, List


@dataclass
class BudgetItem:
    category: str
    description: str
    unit_cost: float
    quantity: int

    @property
    def total(self) -> float:
        return self.unit_cost * self.quantity


def prompt_item() -> BudgetItem | None:
    print("\nYeni kalem ekle (boş kategori ile çık):")
    category = input("Kategori (personel / seyahat / cihaz / hizmet / diğer): ").strip()
    if not category:
        return None

    description = input("Açıklama: ").strip() or "Kalem"

    while True:
        raw = input("Birim maliyet (TL): ").replace(",", ".").strip()
        try:
            unit_cost = float(raw)
            break
        except ValueError:
            print("Lütfen geçerli bir sayı girin.")

    while True:
        raw = input("Adet / süre (sayı): ").strip()
        try:
            quantity = int(raw)
            break
        except ValueError:
            print("Lütfen geçerli bir tam sayı girin.")

    return BudgetItem(category=category, description=description, unit_cost=unit_cost, quantity=quantity)


def summarize(items: List[BudgetItem]) -> None:
    if not items:
        print("\nHiç kalem girilmedi.")
        return

    per_category: Dict[str, float] = {}
    grand_total = 0.0
    for it in items:
        per_category[it.category] = per_category.get(it.category, 0.0) + it.total
        grand_total += it.total

    print("\n== Bütçe Özeti ==")
    for cat, total in sorted(per_category.items(), key=lambda x: x[0]):
        print(f"- {cat}: {total:,.2f} TL")
    print("------------------------")
    print(f"Toplam: {grand_total:,.2f} TL")


def main() -> None:
    print("TUBITAK Proje Bütçe Hesaplayıcı (basit örnek)")
    print("Her kalem için kategori, açıklama, birim maliyet ve adet girin.")

    items: List[BudgetItem] = []
    while True:
        item = prompt_item()
        if item is None:
            break
        items.append(item)

    summarize(items)


if __name__ == "__main__":
    main()
