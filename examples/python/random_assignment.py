"""Simple random assignment helper for experimental projects.

Given a list of participant IDs, assign them randomly to groups
(A/B or more groups).

Usage example:
    python examples/python/random_assignment.py
"""

from __future__ import annotations

import random
from typing import Dict, List


def random_assign(ids: List[str], groups: List[str]) -> Dict[str, str]:
    shuffled = ids[:]
    random.shuffle(shuffled)
    assignments: Dict[str, str] = {}
    for i, pid in enumerate(shuffled):
        assignments[pid] = groups[i % len(groups)]
    return assignments


def main() -> None:
    print("Basit Rastgele Atama Aracı")
    raw_ids = input("Katılımcı ID'lerini virgülle ayırarak girin (örn: S1,S2,S3): ")
    ids = [s.strip() for s in raw_ids.split(",") if s.strip()]
    if not ids:
        print("Hiç katılımcı girilmedi.")
        return

    raw_groups = input("Grupları virgülle ayırarak girin (örn: A,B): ")
    groups = [g.strip() for g in raw_groups.split(",") if g.strip()]
    if len(groups) < 2:
        print("En az iki grup girilmelidir.")
        return

    assignments = random_assign(ids, groups)
    print("\nAtama Sonuçları:")
    for pid in sorted(assignments.keys()):
        print(f"- {pid} -> {assignments[pid]}")


if __name__ == "__main__":
    main()
